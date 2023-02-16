import { Router } from 'express'
import { createUser, getUsers, getSubjects } from '../lib/db.js'

const router = new Router()

router.get('/users', getUsers)
router.post('/users', createUser)
router.get('/subjects', getSubjects)
export default router
