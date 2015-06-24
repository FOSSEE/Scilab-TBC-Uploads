//Given that
ratio = 0.0072
T = 2.0*10^9  //in years
Th1 = 7.04*10^8  //in years
Th2 = 44.7*10^8  //in years

//Sample Problem 44-3
txt = mopen('Example44_3_result.txt','wt')
mfprintf(txt, '**Sample Problem 44-3**\n')
l1 = log(2)/Th1
l2 = log(2)/Th2
ratioEarlier = ratio*%e^((l1 - l2)*T)
mfprintf(txt, 'The earlier ratio is equal to %f', ratioEarlier)
mclose(txt)