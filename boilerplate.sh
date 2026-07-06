#!/bin/bash
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Page</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div id="app">
    </div>
    <script src="js/app.js"></script>
</body>
</html>
EOF
mkdir -p css js
touch css/style.css js/app.js
echo "Boilerplate created successfully!"
