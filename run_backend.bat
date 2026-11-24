@echo off
echo ========================================================
echo Starting Agentic Recruitment Intelligence Backend...
echo ========================================================
cd /d "%~dp0Agentic-Recruitment-Intelligence-main\backend"
"%~dp0.venv\Scripts\python.exe" -m uvicorn app.main:app --host 127.0.0.1 --port 8000 --reload
pause
