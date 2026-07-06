#!/bin/bash
PROJECT_NAME=$1
if [ -z "$PROJECT_NAME" ]; then
    echo "Usage: ./new-project.sh project-name"
    exit 1
fi
mkdir -p "$PROJECT_NAME"/{src/{css,js,images},docs,tests}
touch "$PROJECT_NAME"/README.md
touch "$PROJECT_NAME"/src/index.html
touch "$PROJECT_NAME"/src/css/styles.css
touch "$PROJECT_NAME"/src/js/main.js
echo "# $PROJECT_NAME" > "$PROJECT_NAME"/README.md
cat > "$PROJECT_NAME"/src/index.html << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$PROJECT_NAME</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <main>
        <h1>Welcome to $PROJECT_NAME</h1>
    </main>
    <script src="js/main.js"></script>
</body>
</html>
EOF
echo "Project $PROJECT_NAME created successfully!"
