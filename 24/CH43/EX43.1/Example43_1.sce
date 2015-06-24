//Given that
e = 1.6*10^-19  //ev to joule conversion
E = 5.30*10^6*e  //in Joules
n = 79  //number of protons

//Sample Problem 43-1
txt = mopen('Example43_1_result.txt','wt')
mfprintf(txt, '**Sample Problem 43-1**\n')
K = 9*10^9  //in SI unit
q1 = 2*e
q2 = n*e
//K*q1*q2/d = E
d = K*q1*q2/E
mfprintf(txt, 'The distance of the alpha particles from gold nucleus is equal to %em', d)
mclose(txt)