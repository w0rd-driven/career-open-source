#!/usr/bin/env bash

###
# Generate prospects directory from scaffolding
###

# Hide files prefixed with _ over . like static site generators

# Arguments
# -y|--year
#   Year to prefix
#     Defaults to current year
# -t|--tech(nology)
#   Technology grouping
#     Defaults to "elixir"
# -c|--companies
#   Companies delimited by comma, jobs are grouped by company in the case of multiple applications
#     Defaults to prompt for input

# Setup variables
SCRIPT_NAME=`basename $0`
SCRIPT_VERSION="v1.0"
SCAFFOLD_NAME="year-tech-company"
SCAFFOLD_DIRECTORY="$(pwd)/${SCAFFOLD_NAME}"
YEAR="$(date +%Y)"
TECHNOLOGY="Elixir"
#TECHNOLOGY="Vue Js"
COMPANIES="(Prompt)"
PROSPECTS_ROOT="$(dirname $PWD)"

###
# Print usage and help
###
function usage() {
    printf "${SCRIPT_NAME} ${SCRIPT_VERSION} usage:\n\n"
    case "$1" in
        -y|--year)
            printf "%b%s\t\t%b%s\n\n" "$RED" "-y | --year" "$CYAN" "Year"
            # printf "\t%b%s\t%b%s\n" "$PINK" "-s | --server"    "$YELLOW" "the server to which connections will be established"
            printf "%b\n" "$DEFAULT"; printf "NOTES:\n"
            printf "\t%s\n\n" "Defaults to the current year, ${YEAR}."
            printf "EXAMPLES:\n"
            printf "%b%s\n" "$ORANGE" "${SCRIPT_NAME} -y '2020'"
            printf "%b%s\n\n" "$DEFAULT" "Generate for the year 2020."
        ;;
        -t|--tech)
            printf "%b%s\t\t%b%s\n\n" "$RED" "-t | --tech" "$CYAN" "Technology grouping"
            printf "%b\n" "$DEFAULT"; printf "NOTES:\n"
            printf "\t%s\n\n" "Defaults to ${TECHNOLOGY}."
            printf "EXAMPLES:\n"
            printf "%b%s\n" "$ORANGE" "${SCRIPT_NAME} -t 'Elixir'"
            printf "%b%s\n\n" "$DEFAULT" "Generate for the Elixir language."
        ;;
        -c|--companies)
            printf "%b%s\t%b%s\n\n" "$RED" "-c | --companies" "$CYAN" "List of companies, comma delimited."
            printf "%b\n" "$DEFAULT"; printf "NOTES:\n"
            printf "\t%s\n\n" "Defaults to prompt for user input if not specified."
            printf "EXAMPLES:\n"
            printf "%b%s\n" "$ORANGE" "${SCRIPT_NAME} -c 'Hello,World'"
            printf "%b%s\n\n" "$DEFAULT" "Generate directories for the companies Hello and World."
        ;;
        *)
            printf "%b%s\t\t%b%s\n" "$RED" "-y | --year"    "$WHITE" "Year"
            printf "%b%s\t\t%b%s\n" "$RED" "-t | --tech"    "$WHITE" "Technology grouping"
            printf "%b%s\t%b%s\n" "$RED" "-c | --companies" "$WHITE" "List of companies, comma delimited."
            printf "%b%s\t\t%b%s\n" "$RED" "-h | --help"    "$WHITE" "Show help text"
            printf "%b\n" "$DEFAULT"; printf "NOTES:\n"
            printf "\t%s\n\n" "You can further explore an option with -h -?, Example: ${SCRIPT_NAME} -h -y"
        ;;
    esac
}

###
# Read list of company names delimited by commas
###
function read_companies() {
    printf "%s\n" "Please enter the company names delimited by commas >"
    read COMPANIES
}

###
# Slugify name by cleaning up special characters for most filesystems
###
# See https://gist.github.com/oneohthree/f528c7ae1e701ad990e6
function slugify() {
    echo "$1" | iconv -t ascii//TRANSLIT | sed -r s/[^a-zA-Z0-9]+/-/g | sed -r s/^-+\|-+$//g | tr "[:upper:]" "[:lower:]"
}

###
# Print configuration
###
function print_config() {
    printf "%s\n\n" "${SCRIPT_NAME} :: Prospect generator ${SCRIPT_VERSION}"
    printf "%s\n" "-------------------------"
    printf "%s\n" "Configuration"
    printf "%s\n" "-------------------------"
    printf "%s\n" "Directory:"
    printf "  %s\n" "${SCAFFOLD_DIRECTORY}"
    printf "%s\n" "Year:"
    printf "  %s\n" "${YEAR}"
    printf "%s\n" "Technology:"
    printf "  %s\n" "${TECHNOLOGY}"
    printf "%s\n" "Companies:"
    printf "  %s\n" "${COMPANIES_LIST[@]}"
    # printf "  %s\n" "Number of elements: ${#COMPANIES_LIST[@]}"
    printf "%s\n" "Files:"
    printf "  %s\n" "${FILES[@]}"
    printf "%s\n\n" "-------------------------"
}

###
# Generate directories
###
function generate() {
    for COMPANY_NAME in "${COMPANIES_LIST[@]}"
    do
        #echo $COMPANY_NAME
        DIRECTORY_NAME="$(slugify $YEAR)-$(slugify $TECHNOLOGY)-$(slugify $COMPANY_NAME)"
        DIRECTORY_PATH="${PROSPECTS_ROOT}/research/${DIRECTORY_NAME}"
        printf "%s\n" "Generating directory ${DIRECTORY_NAME} -> ${DIRECTORY_PATH}"
        mkdir -p "${DIRECTORY_PATH}"
        # echo "cp -R ${SCAFFOLD_DIRECTORY} ${DIRECTORY_PATH}/"
        # cp -R -v "${SCAFFOLD_DIRECTORY}/" "${DIRECTORY_PATH}"
        cp -R "${SCAFFOLD_DIRECTORY}/" "${DIRECTORY_PATH}"
        # HIDDEN_FILES=($(find ${DIRECTORY_PATH} -type f -name "[_]**"))
        HIDDEN_FILES=($(find ${DIRECTORY_PATH} -type f -name ".*"))
        rm ${HIDDEN_FILES[*]}
    done
}

###
# Parse options
###
NUMARGS="$#"
POSIT=()
while [[ $# -gt 0 ]]; do
    KEY="$1"
    case $KEY in
        -y|--year) YEAR="$2" ; shift ;;
        -t|--tech) TECHNOLOGY="$2" ; shift ;;
        -c|--companies) COMPANIES="$2" ; shift ;;
        -h|--help) usage "$2" ; shift ; exit 0 ;;
        --) usage "$2" ; shift ; exit 0 ;;
        *) printf "%b%s%b%s%b\n\n" "$WHITE" "${KEY}: " "$RED" "Not implemented." "$DEFAULT" ;;
    esac
    shift
done
set -- "${POSIT[@]}"

if [ $COMPANIES == "(Prompt)" ]; then
    read_companies
fi

# See https://www.golinuxcloud.com/bash-split-string-into-array-linux/#Method_4_Bash_split_string_into_array_using_tr
COMPANIES_LIST=($(echo ${COMPANIES} | tr ',' ' '))

# echo "find ${SCAFFOLD_DIRECTORY} -type f -name \"[^_]**\""
FILES=($(find ${SCAFFOLD_DIRECTORY} -type f -name "[^_]**"))

print_config
generate
