retornaElemento :: Int -> [Int] -> Int
retornaElemento indice lista = lista !! (indice-1)


main = do
	lista <- getLine
	indice <- getLine
	let resultado = retornaElemento (read indice) (read lista)
	print resultado
	

