#!/bin/env bash
function deploy () {
    bucket="s3://staging.dailey.page"

    if [[ $1 == "prod" ]]; then
        bucket="s3://dailey.page/"
    fi

    echo "Deploying to $bucket..."
    aws --profile dailey s3 sync public/. $bucket
    echo "Done. 👍🏻"
}

deploy $1
