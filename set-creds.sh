# /bin/zsh
aws login --profile root;
$(aws configure export-credentials --profile root --format env);