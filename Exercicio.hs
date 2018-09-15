module Exercicio where

-- 2) REFAZER OS EXERCICIO DO CAP1 USANDO FILTER, MAP E FOLDL

-- a)[1,11,121,1331,14641,161051,1771561]	
exA :: [Int]
exA = map (11^) [1..6]

-- b)[1,2,3,5,6,7,9,10,11,13,14,15,17,18,19,21,22,23,25,26,27,29,30,31,33,34,35,37,38,39]	
exB :: [Int]
exB = filter (\ x -> mod x 4 /= 0) [1..40]

-- c)["AaBB", "AbBB", "AcBB", "AdBB", "AeBB", "AfBB", "AgBB"]
exC :: [String]
exC = map (\x -> "A" ++ [x] ++ "BB") ['a' ..'g']

-- d)[5,8,11,17,20,26,29,32,38,41]
exD :: [Int]
exD = filter (\x -> not (elem x [14,23,35])) [5,8..41]

-- e)[1.0,0.5,0.25,0.125,0.0625,0.03125]
exE :: [Double]
exE = map (\ x -> x/2 ) [2.0,1.0,0.5,0.25,0.125,0.0625]

-- f)[1,10,19,28,37,46,55,64]
exF :: [Int]
exF = map (\x -> x)[1,10..64]

-- g)[2,4,8,10,12,16,18,22,24,28,30]
exG :: [Int]
exG = filter (\x -> not(elem x [6,14,20,26])) [2,4..30]

-- h)['@','A','C','D','E','G','J','L']	
exH :: [Char]
exH = filter (\x -> not(elem x "BFHI")) . map (\ x -> x) $ ['@'..'L']
--exH = filter (\x -> not(elem x ['B','F','H','I'])) . map (\ x -> x) $ ['@'..'L']