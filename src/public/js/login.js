signUpBtn.onclick = async () => {
  let response = await fetch('/users', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },

    body: JSON.stringify({
      fullname: userFullName.value,
      username: userName.value,
      password: userPassword.value,
      email: userEmail.value,
      gender: genderFemale.value,
    }),
  })
  let { status, message, token } = await response.json()

  if (status == 201) {
    window.localStorage.setItem('token', token)
    window.location = '/'
  } else {
    console.log(message)
  }
}
