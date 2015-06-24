  
//Caption:Program to calculate the probability that a 1000 bit data block experiences exaclty 4 errors while being transmitted over a link having 10^-5 error rate
 
//Example 12.3
 
//Page 527
 
disp('Assuming inpendenterror, we can obtain the probability of exactly 4 errors directly from the Poisson distribution. The average number of errors is,')

lamt=[(10^3)*(10^-5)]

disp('Thus,')

P4={[(0.01^4)/(1*2*3*4)]*%e^-0.01}

disp("Result")
 
disp("P(4) = 4.125*10^-10")
 