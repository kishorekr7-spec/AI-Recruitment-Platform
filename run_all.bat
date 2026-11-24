@echo off
echo ========================================================
echo Launching Recruitment Platform (Backend + Frontend)...
echo ========================================================
start "Backend - FastAPI" cmd /k "cd /d "%~dp0Agentic-Recruitment-Intelligence-main\backend" && "%~dp0.venv\Scripts\python.exe" -m uvicorn app.main:app --host 127.0.0.1 --port 8000 --reload"
timeout /t 3 /nobreak >nul
start "Frontend - Vite React" cmd /k "cd /d "%~dp0Agentic-Recruitment-Intelligence-main\frontend" && call npm.cmd run dev"
echo.
echo Both servers have been launched in separate windows!
echo - Backend API:  http://127.0.0.1:8000 (Docs: http://127.0.0.1:8000/docs)
echo - Frontend App: http://localhost:5173
echo.
pause
