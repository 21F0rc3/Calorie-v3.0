class DataProvider {
    // Insere uma linha no banco de dados onde cada chave 
    // no Map é um nome de coluna e o valor é o valor da coluna. 
    // O valor de retorno é o id da linha inserida.
    Future<int> insert(T) async {
        throw UnimplementedError();
    }

    // Todas as linhas são retornadas como uma lista de mapas, onde cada mapa é
    // uma lista de valores-chave de colunas.
    Future<List<dynamic>> queryAll() async {
        throw UnimplementedError();
    }

    // Assumimos aqui que a coluna id no mapa está definida. Os outros
    // valores das colunas serão usados para atualizar a linha.
    Future<int> update() async {
        throw UnimplementedError();
    }

    // Exclui a linha especificada pelo id. O número de linhas afetadas é
    // retornada. Isso deve ser igual a 1, contanto que a linha exista.
    Future<int> delete(T) async {
        throw UnimplementedError();
    }
}