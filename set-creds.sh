#!/bin/zsh

profile=$1

# Login to AWS using SSO
if ! aws login --profile $profile; then
    echo "AWS login failed"
    exit 1
fi

# Export credentials to environment
eval "$(aws configure export-credentials --profile $profile --format env)"

# Verify credentials are set
if [[ -z "$AWS_ACCESS_KEY_ID" ]]; then
    echo "Failed to export AWS credentials"
    exit 1
fi

echo "AWS credentials successfully set for profile: ${profile}"
