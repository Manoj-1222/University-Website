# University Management System

A full-stack web application for university management with student portal, admissions system, and public information pages.

## 🚀 Features

- **Student Portal**: Secure login, profile management, attendance tracking
- **Admissions System**: Online application forms with document upload
- **Public Website**: University information, courses, placements, contact details
- **Authentication**: JWT-based secure authentication system
- **File Upload**: Support for documents and images
- **Responsive Design**: Mobile-friendly interface

## 🛠️ Tech Stack

- **Backend**: Node.js, Express.js, MongoDB, JWT
- **Frontend**: React 19, Vite, Bootstrap 5
- **Database**: MongoDB with Mongoose
- **Security**: bcryptjs, Helmet, CORS, Rate Limiting

## 🚀 Quick Start

### Prerequisites
- Node.js (v16+)
- MongoDB (local or Atlas)
- Git

### Installation

1. **Clone the repository**
```bash
git clone <your-repository-url>
cd University-Website
```

2. **Backend Setup**
```bash
cd backend
npm install
```

Create `.env` file:
```env
PORT=5000
MONGODB_URI=mongodb://localhost:27017/university-db
JWT_SECRET=your-secret-key
FRONTEND_URL=http://localhost:5173
```

Start backend:
```bash
npm run dev
```

3. **Frontend Setup**
```bash
cd frontend
npm install
npm run dev
```

4. **Access the application**
- Frontend: http://localhost:5173
- Backend API: http://localhost:5000

## 📁 Project Structure

```
University-Website/
├── backend/                    # Node.js/Express backend
│   ├── controllers/           # Route controllers
│   ├── middleware/           # Custom middleware
│   ├── models/              # MongoDB models
│   ├── routes/              # API routes
│   ├── server.js            # Entry point
│   └── package.json         # Dependencies
├── frontend/                  # React frontend
│   ├── src/
│   │   ├── components/      # React components
│   │   ├── pages/           # Page components
│   │   └── assets/          # Static assets
│   ├── package.json         # Dependencies
│   └── vite.config.js       # Vite configuration
└── README.md                # This file
```

##  API Endpoints

- `POST /api/auth/login` - Student login
- `GET /api/students/profile` - Get student profile
- `POST /api/admissions/apply` - Submit admission application

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

**Made with ❤️ for University Management**
