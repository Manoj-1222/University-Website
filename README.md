# University Management System

A full-stack web application for university management with student portal, admissions system, and public information pages.

## 🚀 Features

### Student Portal (ERP System)
- **Student Login**: Secure authentication using university roll number/email and password
- **Student Profile**: Display of personal details including:
  - Name, email, address, parents' name
  - Year, department/stream of study, semester
  - Age, contact information, date of birth
  - Academic performance (marks/percentage)
  - Attendance tracking (mandatory)

### Public University Website
- **Landing Page**: Dynamic carousels showcasing university events and curriculum
- **About Section**: University mission, vision, goals, and core values
- **Admissions Page**: 
  - Course fees for each department
  - Online admission form with document upload support
  - Forms include: name, email, contact, intermediate results (PDF), ID proof
- **Placements Section**: Training & placement officer details and company information
- **Contact Information**: Location details and social media handles

### Technical Features
- **Authentication & Authorization**: JWT-based secure login system
- **File Upload**: Support for PDF documents and images
- **Rate Limiting**: API protection against abuse
- **Responsive Design**: Mobile-friendly interface
- **RESTful API**: Clean API architecture

## 🛠️ Tech Stack

### Backend
- **Runtime**: Node.js
- **Framework**: Express.js
- **Database**: MongoDB with Mongoose ODM
- **Authentication**: JWT (JSON Web Tokens)
- **Password Hashing**: bcryptjs
- **File Upload**: Multer
- **Validation**: Zod
- **Security**: Helmet, CORS, Rate Limiting
- **Development**: Nodemon

### Frontend
- **Framework**: React 19
- **Build Tool**: Vite
- **Routing**: React Router DOM v7
- **Styling**: Bootstrap 5, Custom CSS
- **HTTP Client**: Axios
- **Form Handling**: Formik with Yup validation
- **Linting**: ESLint

## 📋 Prerequisites

Before you begin, ensure you have the following installed on your system:

- **Node.js** (version 16.0 or higher) - [Download here](https://nodejs.org/)
- **npm** (comes with Node.js) or **yarn**
- **MongoDB** - You can use:
  - Local MongoDB installation - [Download here](https://www.mongodb.com/try/download/community)
  - MongoDB Atlas (cloud) - [Sign up here](https://www.mongodb.com/atlas/database)
- **Git** - [Download here](https://git-scm.com/)

## 🚀 Local Development Setup

### 1. Clone the Repository

```bash
git clone <your-repository-url>
cd University-backend
```

### 2. Backend Setup

Navigate to the backend directory and install dependencies:

```bash
cd backend
npm install
```

#### Environment Configuration

Create a `.env` file in the `backend` directory with the following variables:

```env
# Server Configuration
PORT=5000
NODE_ENV=development

# Database Configuration
MONGODB_URI=mongodb://localhost:27017/university-db
# For MongoDB Atlas, use: mongodb+srv://username:password@cluster.mongodb.net/university-db

# JWT Configuration
JWT_SECRET=your-super-secret-jwt-key-here
JWT_EXPIRES_IN=7d

# CORS Configuration (Frontend URL)
FRONTEND_URL=http://localhost:5173

# Rate Limiting (requests per window)
RATE_LIMIT_MAX=100
RATE_LIMIT_WINDOW_MS=900000

# File Upload Configuration
MAX_FILE_SIZE=5242880
ALLOWED_FILE_TYPES=image/jpeg,image/png,image/gif,application/pdf
```

#### Start the Backend Server

For development with auto-restart:
```bash
npm run dev
```

For production:
```bash
npm start
```

The backend server will start on `http://localhost:5000`

### 3. Frontend Setup

Open a new terminal and navigate to the frontend directory:

```bash
cd frontend
npm install
```

#### Environment Configuration (Optional)

Create a `.env` file in the `frontend` directory if you need to customize the API URL:

```env
VITE_API_URL=http://localhost:5000/api
```

#### Start the Frontend Development Server

```bash
npm run dev
```

The frontend development server will start on `http://localhost:5173`

### 4. Database Setup

#### Option A: Local MongoDB
1. Start your local MongoDB service
2. The application will automatically create the database and collections

#### Option B: MongoDB Atlas
1. Create a cluster on MongoDB Atlas
2. Get your connection string
3. Update the `MONGODB_URI` in your backend `.env` file

### 5. Testing the Application

1. **Backend API**: Visit `http://localhost:5000/api/health` to check if the backend is running
2. **Frontend**: Visit `http://localhost:5173` to access the application
3. **Database**: Check MongoDB for the `university-db` database creation

## 📁 Project Structure

```
university-management-system/
├── backend/                    # Node.js/Express backend
│   ├── controllers/           # Route controllers
│   ├── middleware/           # Custom middleware
│   ├── models/              # MongoDB models
│   ├── routes/              # API routes
│   ├── tests/               # API tests
│   ├── uploads/             # File upload directory
│   ├── server.js            # Entry point
│   ├── package.json         # Backend dependencies
│   └── vercel.json          # Vercel deployment config
├── frontend/                  # React frontend
│   ├── src/
│   │   ├── components/      # React components
│   │   ├── pages/           # Page components
│   │   ├── routes/          # Route protection
│   │   ├── config/          # API configuration
│   │   └── assets/          # Static assets
│   ├── public/              # Public assets
│   ├── index.html           # HTML template
│   ├── package.json         # Frontend dependencies
│   └── vite.config.js       # Vite configuration
├── .gitignore               # Git ignore rules
└── README.md                # This file
```

## 🚀 Available Scripts

### Backend Scripts
```bash
npm start          # Start production server
npm run dev        # Start development server with nodemon
```

### Frontend Scripts
```bash
npm run dev        # Start development server
npm run build      # Build for production
npm run preview    # Preview production build
npm run lint       # Run ESLint
```

## 🔧 API Endpoints

### Authentication
- `POST /api/auth/login` - Student login
- `POST /api/auth/register` - Student registration

### Student Management
- `GET /api/students/profile` - Get student profile
- `PUT /api/students/profile` - Update student profile
- `GET /api/students/attendance` - Get attendance records

### Admissions
- `POST /api/admissions/apply` - Submit admission application
- `GET /api/admissions/courses` - Get course information
- `POST /api/admissions/upload` - Upload documents

## 🚀 Deployment

### Backend Deployment (Vercel)
The backend includes a `vercel.json` configuration file for easy deployment to Vercel.

### Frontend Deployment
Build the frontend for production:
```bash
cd frontend
npm run build
```

The built files will be in the `dist` directory.

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature-name`
3. Commit your changes: `git commit -m 'Add some feature'`
4. Push to the branch: `git push origin feature-name`
5. Submit a pull request

## 📝 Environment Variables Reference

### Backend (.env)
| Variable | Description | Example |
|----------|-------------|---------|
| PORT | Server port | 5000 |
| NODE_ENV | Environment | development/production |
| MONGODB_URI | Database connection string | mongodb://localhost:27017/university-db |
| JWT_SECRET | JWT secret key | your-secret-key |
| JWT_EXPIRES_IN | JWT expiration time | 7d |
| FRONTEND_URL | Frontend URL for CORS | http://localhost:5173 |

### Frontend (.env)
| Variable | Description | Example |
|----------|-------------|---------|
| VITE_API_URL | Backend API URL | http://localhost:5000/api |

## 🐛 Troubleshooting

### Common Issues

1. **MongoDB Connection Error**
   - Ensure MongoDB is running locally or check Atlas connection string
   - Verify network connectivity and firewall settings

2. **Port Already in Use**
   - Change the PORT in backend `.env` file
   - Kill the process using the port: `npx kill-port 5000`

3. **CORS Issues**
   - Verify FRONTEND_URL in backend `.env` matches your frontend URL
   - Check CORS configuration in server.js

4. **File Upload Issues**
   - Ensure uploads directory exists: `mkdir backend/uploads`
   - Check file size and type restrictions

5. **npm Install Errors**
   - Clear npm cache: `npm cache clean --force`
   - Delete node_modules and reinstall: `rm -rf node_modules && npm install`

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👥 Team

- **Backend Development**: Node.js/Express API with MongoDB
- **Frontend Development**: React with Vite and Bootstrap
- **Database Design**: MongoDB schema design
- **Authentication**: JWT implementation

## 📞 Support

For support and questions:
- Create an issue in the repository
- Check the troubleshooting section
- Review the API documentation

---

**Made with ❤️ for University Management**
