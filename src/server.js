import express from 'express'
import fileUpload from 'express-fileupload'
import ejs from 'ejs'
import path from 'path'

import userRouter from './routers/users.router.js'

const app = express()

app.use(express.json())
app.use(fileUpload())

app.use(userRouter)

app.engine('html', ejs.renderFile)
app.set('view engine', 'html')
app.set('views', path.resolve('src', 'views'))
app.use(express.static(path.resolve('src', 'public')))
app.use(express.static(path.resolve('uploads')))

app.get('/login', (req, res) => {
  res.render('login.ejs')
})

app.get('/', (req, res) => {
  res.render('index.ejs')
})

app.listen(5000, () => console.log('server at 5000*'))
