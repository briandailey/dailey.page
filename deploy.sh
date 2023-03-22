#!/bin/env bash
# First, build hugo after clearing the build dir.
rm -rf public && hugo

function deploy () {
    bucket="s3://drafts.dailey.page"
    url="http://drafts.dailey.page.s3-website.us-east-2.amazonaws.com"

    if [[ $1 == "prod" ]]; then
        bucket="s3://dailey.page/"
        url="http://dailey.page.s3-website-us-east-1.amazonaws.com/"
    fi

    echo "Deploying to $bucket..."
    aws --profile dailey s3 sync public/. $bucket
    echo "Done. Published to $url"
    echo "👍🏻"
}

deploy $1
