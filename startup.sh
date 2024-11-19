#!/bin/bash

# MimFlix Project Setup Script
echo "🚀 Starting the MimFlix project setup..."

# Create project structure directly in the repo root
echo "📁 Setting up project structure in the repository root"
mkdir -p {css,images,js,json,xml,movies,blogs/md,ftp,.github/workflows}

# Create and populate files here as usual...
# Navigate to the project directory


echo "🔧 Creating main index.html"
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Stream movies, IPTV, blogs, and more with MimFlix.">
    <meta name="keywords" content="Movies, IPTV, Blogs, Streaming, Entertainment">
    <meta name="author" content="MimFlix Team">
    <title>MimFlix - Stream Movies, IPTV & Blogs</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="icon" href="images/favicon.ico">
</head>
<body>
    <header class="bg-dark text-white p-3">
        <div class="container d-flex justify-content-between align-items-center">
            <img src="images/logo.svg" alt="MimFlix Logo" width="50">
            <nav>
                <a href="movies/index.html" class="text-white mx-2">Movies</a>
                <a href="iptv/index.html" class="text-white mx-2">IPTV</a>
                <a href="blogs/index.html" class="text-white mx-2">Blogs</a>
                <a href="ftp/index.html" class="text-white mx-2">FTP</a>
            </nav>
        </div>
    </header>
    <main class="container my-5 text-center">
        <h1>Welcome to MimFlix</h1>
        <p>Your ultimate entertainment hub for Movies, IPTV, and Blogs.</p>
    </main>
    <footer class="bg-dark text-white text-center py-3">
        <p>&copy; 2024 MimFlix. All Rights Reserved.</p>
        <div>
            <a href="#" class="text-white mx-2"><i class="fa fa-facebook"></i></a>
            <a href="#" class="text-white mx-2"><i class="fa fa-twitter"></i></a>
            <a href="#" class="text-white mx-2"><i class="fa fa-instagram"></i></a>
        </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
EOF

echo "🎨 Creating styles.css"
cat > css/styles.css << 'EOF'
body {
    font-family: Arial, sans-serif;
    background-color: #121212;
    color: #fff;
    margin: 0;
}
a {
    text-decoration: none;
}
EOF

echo "📜 Creating JavaScript script.js"
cat > js/script.js << 'EOF'
console.log("MimFlix Initialized");
EOF

echo "🖼️ Creating favicon.ico"
cat > images/favicon.ico << EOF
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100" width="32" height="32">
    <circle cx="50" cy="50" r="40" fill="#ffcc00" />
</svg>
EOF

echo "🔖 Creating logo.svg"
cat > images/logo.svg << 'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100">
  <circle cx="50" cy="50" r="40" fill="#ffcc00" />
  <text x="50%" y="50%" font-size="20" text-anchor="middle" dy=".3em">MimFlix</text>
</svg>
EOF

echo "🎥 Creating movies/index.html"
mkdir -p movies
cat > movies/index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movies</title>
    <link rel="stylesheet" href="../css/styles.css">
</head>
<body>
    <h1>Movies Section</h1>
    <p>List of movies will be displayed here.</p>
</body>
</html>
EOF

echo "📂 Creating movies/database.json"
cat > movies/database.json << 'EOF'
[
    {
        "title": "Example Movie",
        "year": 2024,
        "poster": "http://example.com/movie-poster.jpg",
        "video": "http://example.com/movie.mp4"
    }
]
EOF

echo "📝 Creating blogs/index.html"
mkdir -p blogs/md
cat > blogs/index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blogs</title>
    <link rel="stylesheet" href="../css/styles.css">
</head>
<body>
    <h1>Blog Section</h1>
    <p>Welcome to our blog!</p>
</body>
</html>
EOF

echo "🖊️ Creating sample blogs in Markdown format"
cat > blogs/md/sample-blog.md << 'EOF'
# Sample Blog
Welcome to MimFlix Blogs! This is your first blog post.
EOF

echo "📂 Creating IPTV section"
mkdir -p iptv
cat > iptv/index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IPTV</title>
    <link rel="stylesheet" href="../css/styles.css">
</head>
<body>
    <h1>IPTV Section</h1>
    <p>Watch your favorite channels here.</p>
</body>
</html>
EOF

echo "📜 Creating sitemap.xml"
mkdir -p xml
cat > xml/sitemap.xml << 'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
    <url>
        <loc>https://www.mimflix.com/</loc>
        <lastmod>2024-11-01</lastmod>
        <priority>1.0</priority>
    </url>
</urlset>
EOF

echo "⚙️ Creating GitHub Actions deploy.yml"
mkdir -p .github/workflows
cat > .github/workflows/deploy.yml << 'EOF'
name: Deploy MimFlix

on:
  push:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout Repository
        uses: actions/checkout@v2

      - name: Run Startup Script
        run: |
          chmod +x startup.sh
          ./startup.sh
EOF

echo "✅ MimFlix project setup complete!"
