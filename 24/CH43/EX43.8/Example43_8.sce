//Given that
ratio = 10.3
Th = 1.25*10^9  //in years

//Sample Problem 43-8
txt = mopen('Example43_8_result.txt','wt')
mfprintf(txt, '**Sample Problem 43-8**\n')
t = Th * log(1 + ratio)/log(2) 
mfprintf(txt, 'The life of rock is %eyears', t)
mclose(txt)