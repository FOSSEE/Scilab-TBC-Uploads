
//Caption:Program to calculate the probability that eight or more arrivals occur in an chosen 30 sec
 
//Example 12.2
 
//Page 526
 
disp('The average number of arrivals in a 30 sec interval is,')

lamt=4*(30/60)

disp('The probability of eight or more arrivals is,')

P0=1

P1=[(2^1)/(1)]

P2=[(2^2)/(1*2)]

P3=[(2^3)/(1*2*3)]

P4=[(2^4)/(1*2*3*4)]

P5=[(2^5)/(1*2*3*4*5)]

P6=[(2^6)/(1*2*3*4*5*6)]

P7=[(2^7)/(1*2*3*4*5*6*7)]

i=1-{(%e^-2)*[P0+P1+P2+P3+P4+P5+P6+P7]}

disp("Result")
 
disp("P(2) = 0.0011")
 