*** Settings ***
Documentation       Suíte de busca sobre Rick and Morty


*** Variables ***
${URL}      https://www.google.com/

*** Test Cases ***
Abrir ${BROWSER} na página ${URL}
    Open Browser  ${URL}  ${BROWSER}

Digitar "${PALAVRA_BUSCA}" na busca
    Set Test Variable       ${PALAVRA_BUSCA}
    Input text      id=lst-ib       ${PALAVRA_BUSCA}
    Click Button        Pesquisa Google

Confirmar se a busca retorna o resultado buscado
    ${TITULO} = Get title
    Should Contain      ${TITULO}       ${PALAVRA_BUSCA}

Clique no primeiro "${LINK}"
    ${TEXT} = Get text      css=#rso > div:nth-child(1) > div > div > div > div > h3
    Click link      ${TEXT}

Verificar se a página apresentada está correta
    ${TITULO}       Get title
    Should Contain      ${TITULO}       ${PALAVRA_BUSCA}
    Element Text Should Be      css=h1      RICK AND MORTY

Fechar navegador    
    Close Browser

*** Keywords ***