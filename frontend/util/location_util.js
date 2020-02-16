export const getData = (search) => {
  debugger
    return $.ajax({
      method: 'GET',
      url: `api/search/`,
      dataType: "json",
      data: `q=${search}`
    });
  };
  

export const fetchLocations = () => {
  return $.ajax({
    method: 'GET',
    url: 'api/locations'
  })
}