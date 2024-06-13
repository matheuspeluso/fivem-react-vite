import React from 'react'
import { useState } from 'react'
import styles from './AppComponent.module.css'

const AppComponent = () => {

  const [visible,setVisible] = useState(false)

  function enviarDadosParaoJogo(path, dados) {
    let config = {
        method: 'POST', headers: { 'Content-Type': 'application/json; charset=UTF-8', },
        body: JSON.stringify(dados)
    }
    fetch(`https://${GetParentResourceName()}/${path}`, config)
  }

  function closeNui () {
    setVisible(false)
    enviarDadosParaoJogo('fecharTela')
  }

  window.addEventListener('message', (event) => {
    console.log(event)
    console.log(event.data.type)
    if (event.data.type === 'open') {
      setVisible(true)
    }
  });

  if (visible){
    return(
      <div className={styles.nui}>
        <h2>NUI ABERTA!</h2>
        <button onClick={()=> closeNui()}>Fechar Nui</button>
      </div>
    )
  }
}

export default AppComponent