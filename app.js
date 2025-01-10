const express = require('express');
const dotenv = require('dotenv');
const menuRoutes = require('./routes/menuRoutes');
const blogRoutes = require('./routes/blogRoutes');
const testimoniRoutes = require('./routes/testimoniRoutes');
const cors = require('cors');

dotenv.config();

const app = express();

// Middleware
app.use(express.json());

app.use(cors());

// Routes
app.use('/api/menu', menuRoutes);
app.use('/api/blog', blogRoutes);
app.use('/api/testimoni', testimoniRoutes);

// Server
const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});
