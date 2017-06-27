retornaDivisores :: Int -> [Int]
retornaDivisores numero = [ x | x <- [1 .. numero-1], ((mod numero x) == 0)]

verificaPerfeito :: Int -> Bool
verificaPerfeito numero = if sum(retornaDivisores numero) == numero then True else False

main = do
	numero <- getLine
	let resultado = verificaPerfeito (read numero)
	print resultado
