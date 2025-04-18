require("dotenv").config();
const express = require("express");
const cors = require("cors");
const userRoutes = require("./usuarios-api/src/routes/userRoutes");

const app = express();
app.use(cors());
app.use(express.json());

app.use("/users", userRoutes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`🚀 Servidor rodando em http://localhost:${PORT}`);
});
