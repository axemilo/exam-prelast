import { Router } from 'express'
import { createUser, getUsers, getSubjects, getTests } from '../lib/db.js'

const router = new Router()

router.get('/users', getUsers)
router.post('/users', createUser)
router.get('/subjects', getSubjects)
router.get('/tests', getTests)
export default router
