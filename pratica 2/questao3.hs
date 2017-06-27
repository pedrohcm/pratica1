retornaDivisores :: Int -> [Int]
retornaDivisores numero = [ x | x <- [1 .. numero], ((mod numero x) == 0)]

verificaPrimo :: Int -> Bool
verificaPrimo numero = if (retornaDivisores numero) == [1,numero] then True else False

verificaPrimoCasado :: Int -> String
verificaPrimoCasado numero 
	| verificaPrimo(numeroSomado) && verificaPrimo(numero) = "PRIMO CASADO!"
	| verificaPrimo(numero) = "PRIMO!"
	| otherwise = "NAO PRIMO!"
	where numeroSomado = numero + 2


main = do
	numero <- getLine
	let resultado = verificaPrimoCasado (read numero)
	print resultado
