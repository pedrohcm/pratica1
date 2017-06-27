operacaoLogica :: Bool -> Bool -> Bool -> String -> Bool
operacaoLogica valor1 valor2 valor3 operacao = if operacao == "AND" then valor1 && valor2 && valor3 else valor1 || valor2 || valor3


main = do
	valor1 <- getLine
	valor2 <- getLine
	valor3 <- getLine
	operacao <- getLine
	let resultado = operacaoLogica (read valor1) (read valor2) (read valor3) operacao
	print resultado
	

