//Given that
v = 2.8*10^8  //in m/s
H = 19.3*10^-3  //in m/s.ly

//Sample Problem 45-6
pt = mopen('Example45_6_result.txt', 'wt')
mfprintf(pt, '**Sample Problem 45-6**\n')
r = v/H
mfprintf(pt, 'The quasar is approx at a distance of %ely', r)
mclose(pt)