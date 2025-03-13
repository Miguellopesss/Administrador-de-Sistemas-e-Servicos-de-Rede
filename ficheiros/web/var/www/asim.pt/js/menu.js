(() => {
    let refMenu = null
    let btnHamburger = null
    let openSvgPath = null
    let closeSvgPath = null
    let btnCurricula = null
    let btnUser = null
    let submenuCurricula = null
    let submenuUser = null

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
            hideElement(submenuCurricula)
            hideElement(submenuUser)
            showElement(openSvgPath)
        }
        btnHamburger.blur()
    }

    const clickBtnCurricula = () => {
        // If the browser's width is equal or larger that 640px, do nothing
        if (window.innerWidth >= 640) {
            return 
        }
        if (submenuCurricula.classList.contains('invisible')) {
            showElement(submenuCurricula)
        } else {
            hideElement(submenuCurricula)            
        }
        btnCurricula.blur()
    }

    const clickBtnUser = () => {
        // If the browser's width is equal or larger that 640px, do nothing
        if (window.innerWidth >= 640) {
            return 
        }
        if (submenuUser.classList.contains('invisible')) {
            showElement(submenuUser)
        } else {
            hideElement(submenuUser)            
        }
        btnUser.blur()
    }

    window.addEventListener("load", (event) => {
        // Initialize DOM elements references
        refMenu = document.getElementById('menu')
        btnHamburger = document.getElementById('hamburger_btn')
        openSvgPath = document.getElementById('hamburger_btn_open')
        closeSvgPath = document.getElementById('hamburger_btn_close')
        btnCurricula = document.getElementById('button_curricula')
        btnUser = document.getElementById('button_user')
        submenuCurricula = document.getElementById('submenu_curricula')
        submenuUser = document.getElementById('submenu_user')

        // Initialize DOM elements events
        hamburger_btn.addEventListener('click', clickBtnHamburger)
        btnCurricula.addEventListener('click', clickBtnCurricula)
        btnUser.addEventListener('click', clickBtnUser)
    })
})()