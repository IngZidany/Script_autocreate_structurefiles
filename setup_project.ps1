# archivo: setup_project.ps1

# Carpetas
$folders = @(
    "rag_hibrido_gemini",
    "rag_hibrido_gemini\nodes",
    "rag_hibrido_gemini\utils",
    "rag_hibrido_gemini\data\documentos"
)

# Archivos .py y otros
$files = @(
    "rag_hibrido_gemini\main.py",
    "rag_hibrido_gemini\langgraph_config.py",
    "rag_hibrido_gemini\nodes\classify.py",
    "rag_hibrido_gemini\nodes\retrieve_embeddings.py",
    "rag_hibrido_gemini\nodes\retrieve_search.py",
    "rag_hibrido_gemini\nodes\generate.py",
    "rag_hibrido_gemini\nodes\fuse_context.py",
    "rag_hibrido_gemini\nodes\evaluate.py",
    "rag_hibrido_gemini\utils\vectorstore.py",
    "rag_hibrido_gemini\utils\gemini_client.py"
)

# Crear carpetas
foreach ($folder in $folders) {
    if (-not (Test-Path $folder)) {
        New-Item -ItemType Directory -Path $folder | Out-Null
    }
}

# Crear archivos base con encabezado
foreach ($file in $files) {
    if (-not (Test-Path $file)) {
        New-Item -ItemType File -Path $file | Out-Null
        Add-Content -Path $file -Value "# $(Split-Path $file -Leaf)"
    }
}

# Crear requirements.txt
$requirements = @"
langgraph
langchain
langchain-community
langchain-google-vertexai
google-cloud-aiplatform
pymongo
python-dotenv
tqdm
"@
Set-Content -Path "rag_hibrido_gemini\requirements.txt" -Value $requirements

# Crear .env base
$envContent = @"
MONGO_URI=mongodb+srv://<usuario>:<clave>@cluster.mongodb.net
MONGO_DB=replikers
PROJECT_ID=replikers
LOCATION=us-central1
VERTEX_MODEL=gemini-1.5-pro-001
"@
Set-Content -Path "rag_hibrido_gemini\.env" -Value $envContent

# Crear .gitignore útil
$gitignore = @"
# Entornos virtuales
venv/
.env
__pycache__/
*.pyc

# Archivos generados
*.log
*.tmp
.ipynb_checkpoints/

# Config locales
.vscode/
.DS_Store
"@
Set-Content -Path "rag_hibrido_gemini\.gitignore" -Value $gitignore