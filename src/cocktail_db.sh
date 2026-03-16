#!/bin/bash

api="https://www.thecocktaildb.com/api/json/v1/1"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36"

function _get() {
    curl --request GET \
        --url "$api/$1" \
        --user-agent "$user_agent" \
        --header "accept: application/json" \
        --header "content-type: application/json"
}

function search_cocktails() {
    _get "search.php?s=$1"
}

function cocktails_by_letter() {
    _get "search.php?f=$1"
}

function search_ingredients() {
    _get "search.php?i=$1"
}

function get_cocktail_details() {
    _get "lookup.php?i=$1"
}

function get_ingredient_details() {
    _get "lookup.php?iid=$1"
}

function get_random_cocktail() {
    _get "random.php"
}

function get_random_selection() {
    _get "randomselection.php"
}

function get_popular_cocktails() {
    _get "popular.php"
}

function get_latest_cocktails() {
    _get "latest.php"
}

function filter_by_ingredient() {
    _get "filter.php?i=$1"
}

function filter_by_alcoholic() {
    _get "filter.php?a=$1"
}

function filter_by_category() {
    _get "filter.php?c=$1"
}

function f
