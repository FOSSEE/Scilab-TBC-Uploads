//Given that
w = 1  //(say)
W = 1.1*w
c = 3*10^8  //in m/s
H = 19.3*10^-3  //in m/s.ly

//Sample Problem 45-7
pt = mopen('Example45_7_result.txt', 'wt')
mfprintf(pt, '**Sample Problem 45-7**\n')
deltaW = W - w
r = c/H * deltaW/w
mfprintf(pt, 'The galaxy is at a distance of %ely', r)
mclose(pt)