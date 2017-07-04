verificaNaLista :: Int -> [Int] -> Bool
verificaNaLista num [] = False
verificaNaLista num (head:body) = if head == num then True else verificaNaLista num body
 
removeRepetidos :: [Int] -> [Int] -> [Int]
removeRepetidos [] l1 = []
removeRepetidos l2 [] = []
removeRepetidos (head:body) l1 = 
    if verificaNaLista head l1 then 
        [] ++ removeRepetidos body l1
    else
        [head] ++ removeRepetidos body l1
 
unirListas :: [Int] -> [Int] -> [Int]
unirListas l1 l2 = l1 ++ removeRepetidos l2 l1
 
main = do
  lista1 <- getLine
  lista2 <- getLine
  print (unirListas (read lista1) (read lista2))
