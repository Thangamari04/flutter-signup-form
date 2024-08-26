const express = require("express");
const bodyParser = require("body-parser");

const app = express();
const PORT = 3000;

app.use(bodyParser.json());

app.post("/register", (req, res) => {
  const { name, businessName, phone, email, password } = req.body;

  res.json({
    message: "User registered successfully",
    data: {
      name,
      businessName,
      phone,
      email,
    },
  });
});

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
