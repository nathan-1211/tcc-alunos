require("dotenv").config();
const express = require("express");
const homeRoute = require("./src/routes/homeRoute");
const path = require("path");
const session = require("express-session");
const cookieParser = require("cookie-parser");
const database = require("./src/database/database");
const adminRoute = require("./src/routes/adminRoute");
const dashboardRoute = require("./src/routes/dashboardRoute");
const registerRoute = require("./src/routes/loginRegisterRoute");
const materiasRoute = require("./src/routes/materiasRoute");
const vestibularesRoute = require("./src/routes/vestibularesRoute");
const quemsomosRoute = require("./src/routes/quemsomosRoute");
const loginRegisterRoute = require("./src/routes/loginRegisterRoute");
const LogoutAdminRoute = require("./src/routes/logoutAdminRoute");
const logoutRoute = require("./src/routes/logoutRoute");
const profileRoute = require("./src/routes/profileRoute");
const pagesRoute = require("./src/routes/pagesRoute");
const uploadAdminRoute = require("./src/routes/uploadAdminRoute");
const positionRoute = require("./src/routes/positionRoute");

const app = express();
const port = process.env.PORTSERVER || 3000;

app.set("view engine", "ejs");
app.set("views", "./src/views");

app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.use(express.static(path.join(__dirname, "./public")));
app.use(express.static(path.join(__dirname, "./public/uploads")));

app.use(cookieParser());
app.use(
  session({
    name: "session",
    secret: process.env.SECRET,
    resave: true,
    cookie: {
      maxAge: 24 * 60 * 60 * 1000,
    },
    saveUninitialized: true,
  })
);

app.use((req, res, next) => {
  res.locals.session = req.session;

  next();
});

app.use(
  "/tinymce",
  express.static(path.join(__dirname, "node_modules", "tinymce"))
);

app.use("/", homeRoute);
app.use("/admin", adminRoute);
app.use("/dashboard", dashboardRoute);
app.use("/loginRegister", loginRegisterRoute);
app.use("/register", registerRoute);
app.use("/materias", materiasRoute);
app.use("/vestibulares", vestibularesRoute);
app.use("/quemSomos", quemsomosRoute);
app.use("/logoutAdmin", LogoutAdminRoute);
app.use("/logout", logoutRoute);
app.use("/profile", profileRoute);
app.use("/pages", pagesRoute);
app.use("/upload", uploadAdminRoute);
app.use("/position", positionRoute);

app.listen(port, async () => {
  const [result] = await database.query("SELECT 1");
  if (result) {
    console.log(`http://localhost:${port}`);
  }
});
