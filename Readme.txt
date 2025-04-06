#SCRIPT PARA LA CREACION AUTOMATIZADA DE ESTRUCTURA DE UN PROJECTO
#Guarda el archivo como: setup_project.ps1 en el directorio donde quieres crear la estructura.
#Ejecutar el script

#Desde PowerShell, navega hasta la carpeta donde guardaste setup_project.ps1 y ejecuta:
	
	.\setup_project.ps1


#Si te da error por permisos, ejecuta primero:

	Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass






NOTA:AL EJECUTAR SE TE CREARÁ LA ESTRUCTURA DEL PROYECTO

*una vez creada , agrega un readme, copia y pega lo siguiente:
	
---------------------------------------------------------------------------------------
# 🧠 RAG Híbrido con Gemini + MongoDB + LangGraph

Este proyecto implementa un sistema **RAG híbrido**, combinando:
- Recuperación por **embeddings locales** en MongoDB
- Recuperación por **Gemini Search** desde Vertex AI
- Generación final con **Gemini 1.5 Pro**
- Orquestación con **LangGraph**

## Estructura general

- `main.py`: arranca el LangGraph
- `nodes/`: cada nodo del flujo del agente
- `utils/`: configuración externa (Mongo, Gemini)
- `data/documentos/`: tus documentos fuente

## Setup rápido

```bash
cd rag_hibrido_gemini
python -m venv venv
venv\Scripts\activate
pip install -r requirements.txt
---------------------------------------------------------------------------------------