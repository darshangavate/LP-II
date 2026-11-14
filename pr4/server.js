import express from "express";
import mongoose from "mongoose";

const app = express();

app.use(express.json());
app.use(express.static("public"));

// Connect Database
mongoose.connect("mongodb://127.0.0.1:27017/studentDB");

// Create Schema
const schema = new mongoose.Schema({
    name: String,
    email: String,
    password: String
});

const Student = mongoose.model("Student", schema);

// Register User
app.post("/register", async (req, res) => {
    const student = new Student(req.body);
    await student.save();

    res.json({message: "Registration Successful!"});
});

// Start Server
app.listen(3000, () => {
    console.log("Server running on port 3000");
});
