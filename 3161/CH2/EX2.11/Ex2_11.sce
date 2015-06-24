clc;
//page 106
//problem 2.11

//(a)
//out of n attempts the probability of message reaching correctly for k times is given by binomial distribution pX(k) = nCk*(q^k)*(1-q)^(n-k) where q is probability of correctly reaching

//Here n = 10, k = 1, q = 0.001
n = 10
k = 1
q = 0.001

//pX(k) is denoted as p_X_1
//10C1 =10
p_X_1 = 10*(q^k)*(1-q)^(n-k)

disp('The probability that out of 10 transmissions 9 are corrent and 1 is incorrect is '+string(p_X_1))

//probability that more than two erroneous out of 100 transmissions(p_100_2) = 1-probability of less than or equal to two error in transmission
//p_100_2 = 1-pX(0)-pX(1)-pX(2)
//p_100_2 =1-100C0*((0.001)^0)*((1-0.001)^100)-100C1*((0.001)^1)*((1-0.001)^99)-100C0*((0.001)^2)*((1-0.001)^98)

//Since, calculation of above is cumbersome we may use Poisson ditribution to approximate above
//Poisson distribution = pX(k) = (alfa^k)*(e^-alfa)/k!, where alfa = n*T

//Here n = 100 & q = 0.001
n = 100
q = 0.001

alfa = n*q

p_100_2 = 1-(alfa^0)*(%e^-0.1)/factorial(0)-(alfa^1)*(%e^-0.1)/factorial(1)-(alfa^2)*(%e^-0.1)/factorial(2)

disp('probability that more than two erroneous out of 100 transmissions is '+string(p_100_2))

//(c)
//from(b), required probability i.e probability of more than one are erroneous out of 100 transmission(p_100_1) is
p_100_1 = 1-(alfa^0)*(%e^-0.1)/factorial(0)-(alfa^1)*(%e^-0.1)/factorial(1)

disp('probability that more than one erroneous out of 100 transmissions is '+string(p_100_1))
