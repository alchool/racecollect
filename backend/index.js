
const express = require('express');
const cors = require('cors');
require('dotenv').config();

const app = express();
app.use(cors());
app.use(express.json());

app.get('/api/pilots', (req, res) => {
  res.json([
    { name: 'Marc Marquez', sport: 'MotoGP' },
    { name: 'Max Verstappen', sport: 'Formula1' }
  ]);
});

app.listen(5000, () => console.log('Backend is running on http://localhost:5000'));
