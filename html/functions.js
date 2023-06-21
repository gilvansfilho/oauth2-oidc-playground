const params = new Proxy(new URLSearchParams(window.location.search), {
    get: (searchParams, prop) => searchParams.get(prop),
});

persist = (key, value) => { 
    window.localStorage.setItem(key, value); 
}

get = (key) => {
    let value = window.localStorage.getItem(key);
    return value;
}

var hideElement = (e) => { window.document.getElementById(e).setAttribute("hidden", true); }
var disableElement = (e) => { window.document.getElementById(e).disabled = true }
var enableElement = (e) => { window.document.getElementById(e).disabled = false }
var showElement = (e) => { window.document.getElementById(e).removeAttribute("hidden") }