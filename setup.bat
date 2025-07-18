@echo off
echo ================================
echo University Management System Setup
echo ================================
echo.

echo Installing root dependencies...
npm install

echo.
echo Installing backend dependencies...
cd backend
npm install
cd ..

echo.
echo Installing frontend dependencies...
cd frontend
npm install
cd ..

echo.
echo ================================
echo Setup completed successfully!
echo ================================
echo.
echo To start the development servers:
echo 1. Backend: npm run dev:backend
echo 2. Frontend: npm run dev:frontend
echo 3. Both: npm run dev
echo.
echo Don't forget to:
echo 1. Create backend/.env file with your configuration
echo 2. Start MongoDB service
echo 3. Update repository URL in package.json
echo.
pause
