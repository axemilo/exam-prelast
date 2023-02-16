const getSubjects = async () => {
  let response = await (await fetch('/subjects')).json()
  let data = await response.data
  console.log(data)
}
