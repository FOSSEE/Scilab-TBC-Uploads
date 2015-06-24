//Given that
R = 2*10^-2  //in meter
n = 500  //number of bees
t = 20*60  //in sec
e = .80
T1 = 35 + 273  //in K
T2 = 47 + 273  //in K
sigma = 5.67*10^-8  //in W/m^2

//Sample Problem 19-7
printf("**Sample Problem 19-7**\n")
A = 4*%pi*R^2
Eaddi = sigma*e*A*(T2^4 - T1^4)*t  //for n bees
E = Eaddi/n
printf("The additional energy produced by each bee is equal to %fJ", E)