//Given that
e = 1.6*10^-19  //conversion from electron volt to Joule
deltaE = 0.20*e
h = 6.62*10^-34  //in J.s

//Sample Problem 43-10
txt = mopen('Example43_10_result.txt','wt')
mfprintf(txt, '**Sample Problem 43-9**\n')
Tavg = h/(2*%pi)/deltaE
mfprintf(txt, 'The average life of the compound is %esec', Tavg)
mclose(txt)