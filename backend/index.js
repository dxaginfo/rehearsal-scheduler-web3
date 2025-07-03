const express = require('express');
const app = express();
app.use(express.json());
// TODO: Add routes for users, bands, rehearsals
app.get('/', (req, res) => res.send('API running'));
app.listen(3001, () => console.log('API listening on 3001'));
