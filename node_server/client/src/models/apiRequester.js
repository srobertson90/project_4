const apiRequester = {
  get: function(url, callback){
    console.log("get request made", url)
    let request = new XMLHttpRequest();
    request.open("GET", url);
    request.onload = callback;
    request.send();
  }
}
module.exports = apiRequester;