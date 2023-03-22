#!/bin/env bash
# First, build hugo after clearing the build dir.
rm -rf public && hugo

function deploy () {
    bucket="s3://drafts.dailey.page"

    if [[ $1 == "prod" ]]; then
        bucket="s3://dailey.page/"
    fi

    echo "Deploying to $bucket..."
    aws --profile dailey s3 sync public/. $bucket
    echo "Done. 👍🏻"
}

deploy $1
