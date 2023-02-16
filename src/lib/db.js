import pg from 'pg'
import jwt from '../utils/jwt.js'

const pool = new pg.Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'postgres',
  password: 'qwertyup',
  port: '5432',
})

const getUsers = (request, response) => {
  pool.query('SELECT * FROM colleges ', (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}

const getSubjects = (request, response) => {
  pool.query('SELECT * FROM setsubjects ', (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).json({
      status: 200,
      messge: 'subjects here',
      data: results,
    })
  })
}

const createUser = (request, response) => {
  const { fullname, username, password, email, gender } = request.body
  pool.query(
    'INSERT INTO users (fullname, username, password, email, gender) VALUES ($1, $2, $3, $4, $5)',
    [fullname, username, password, email, gender],
    (error, results) => {
      if (error) {
        return response.status(403).json({ status: 403, message: 'this username already exists' })
      }
      response.status(201).json({
        status: 201,
        message: 'New user added',
        data: results,
        token: jwt.sign({ id: results }),
      })
    }
  )
}

export { getUsers, createUser, getSubjects }
