(() => {
    let refMenu = null
    let btnHamburger = null
    let openSvgPath = null
    let closeSvgPath = null
    
    const showElement = (element) => {
        element.classList.remove('h-0')
        element.classList.remove('invisible')
        element.classList.add('h-auto')
        element.classList.add('visible')
    }

    const hideElement = (element) => {
        element.classList.remove('h-auto')
        element.classList.remove('visible')
        element.classList.add('h-0')
        element.classList.add('invisible')
    }

    const clickBtnHamburger = () => {
        if (refMenu.classList.contains('invisible')) {
            hideElement(openSvgPath)
            showElement(refMenu)
            showElement(closeSvgPath)            
        } else {
            hideElement(closeSvgPath)            
            hideElement(refMenu)            
            showElement(openSvgPath)
        }
        btnHamburger.blur()
    }

    window.addEventListener("load", (event) => {
        // Initialize DOM elements references
        refMenu = document.getElementById('menu')
        btnHamburger = document.getElementById('hamburger_btn')
        openSvgPath = document.getElementById('hamburger_btn_open')
        closeSvgPath = document.getElementById('hamburger_btn_close')

        // Initialize DOM elements events
        hamburger_btn.addEventListener('click', clickBtnHamburger)        
    })
})()

