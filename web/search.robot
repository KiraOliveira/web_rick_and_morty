*** Settings ***
Library         SeleniumLibrary
Resource        ../web/resource.robot


*** Variables ***


*** Test Cases ***
Cenário: Buscar Rick and Morty e acessar a página
    Abrir   navegador
    Digitar "Rick and Morty" na busca
    Confirmar se a busca retorna o resultado buscado
    Clique no primeiro "link"
    Verificar se a página apresentada está correta
    Fechar navegador



*** Keywords ***