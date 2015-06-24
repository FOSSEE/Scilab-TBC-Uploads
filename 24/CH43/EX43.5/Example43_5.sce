//Given that
M = 2.71  //in g
R = 4490  //in Bq
fraction = 1.17/100
Mo = 74.555  //gm/mol
Na = 6.023*10^23  //n /mol

//Sample Problem 43-5
txt = mopen('Example43_5_result.txt','wt')
mfprintf(txt, '**Sample Problem 43-5**\n')
Nk = Na * M * fraction/Mo
Th = log(2)*Nk/R
mfprintf(txt, 'The half life of the substance is %eSec', Th)