window.onload = () => {
  const make_selector = document.getElementById("car_make")
  const model_selector = document.getElementById("car_model")

  // list of models from select list
  const model_list = [...model_selector.options].map((el) => {
    return el.innerHTML
  })

  make_selector.addEventListener("change", () => {
    const make = make_selector.options[make_selector.selectedIndex].text;
    
    // determine select list based off make type
    let model_collection
    if(make === "Honda") {
      model_collection = model_list.slice(0, 13)
    }else if(make === "Subaru") {
      model_collection = model_list.slice(13, 25)
    }else if(make === "Toyota") {
      model_collection = model_list.slice(25, 37)
    }else if(make === "Ford") {
      model_collection = model_list.slice(37, 49)
    }else {
      model_collection = model_list
    }
    while (model_selector.options.length) {
      model_selector.remove(0)
    }
    model_collection.forEach((el) => {
      const opt = document.createElement("OPTION")
      opt.innerHTML = el
      opt.value = el
      model_selector.appendChild(opt)
    })
  })
}
