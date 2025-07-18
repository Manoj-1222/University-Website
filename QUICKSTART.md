# Quick Start Guide

This guide will help you get the University Management System running locally in under 5 minutes.

## Prerequisites Checklist

- [ ] Node.js (v16+) installed
- [ ] MongoDB running (local or Atlas)
- [ ] Git installed

## One-Command Setup (Windows)

```cmd
.\setup.bat
```

## Manual Setup

### 1. Install Dependencies

```bash
# Root dependencies
npm install

# Backend dependencies
cd backend
npm install

# Frontend dependencies
cd ../frontend
npm install
cd ..
```

### 2. Configure Environment

Copy the example environment file and update it:

```bash
cd backend
copy .env.example .env
```

Edit `backend/.env` with your configuration:
- Set your MongoDB connection string
- Change the JWT secret
- Update other settings as needed

### 3. Start the Application

Option A - Start both servers with one command:
```bash
npm run dev
```

Option B - Start servers separately:

Terminal 1 (Backend):
```bash
npm run dev:backend
```

Terminal 2 (Frontend):
```bash
npm run dev:frontend
```

### 4. Access the Application

- **Frontend**: http://localhost:5173
- **Backend API**: http://localhost:5000/api
- **Health Check**: http://localhost:5000/api/health

## Default Ports

- Frontend: 5173 (Vite)
- Backend: 5000 (Express)
- MongoDB: 27017 (default)

## Troubleshooting

### Port conflicts
```bash
# Kill process on port 5000
npx kill-port 5000

# Kill process on port 5173
npx kill-port 5173
```

### MongoDB connection issues
- Ensure MongoDB service is running
- Check connection string in `.env`
- For Atlas: whitelist your IP address

### Node modules issues
```bash
# Clear cache and reinstall
npm cache clean --force
rm -rf node_modules package-lock.json
npm install
```

## Development Workflow

1. **Make changes** to your code
2. **Hot reload** will update the application automatically
3. **Check console** for any errors
4. **Test your changes** in the browser

## Useful Commands

```bash
# Install all dependencies
npm run install:all

# Start development servers
npm run dev

# Build frontend for production
npm run build:frontend

# Run tests
npm run test:backend

# Lint frontend code
npm run lint:frontend
```

## Next Steps

- Read the full [README.md](README.md) for detailed documentation
- Check out [CONTRIBUTING.md](CONTRIBUTING.md) for contribution guidelines
- Explore the API endpoints in the backend routes
- Customize the frontend components to match your needs

Happy coding! 🚀
