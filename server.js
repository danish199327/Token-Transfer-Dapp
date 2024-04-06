const express = require('express');
const app = express();

// Serve static files from the 'public' directory
app.use(express.static('public'));

// Ignore requests for favicon.ico
app.get('/favicon.ico', (req, res) => res.status(204).end());

// Start the server
const port = process.env.PORT || 3000;
app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});