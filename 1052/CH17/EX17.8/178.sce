clc;
//Example 17.8 
//page no 216
printf(" Example 17.8 page no 216\n\n");
//compressed air is to be employed in the nozzle
T1=520//temperature
P2=40//pressure
P1=14.7//atmosphric pressure
gamma=1.3//degree of freedom
R=1.987//gas constant
W_s=-(gamma*R*T1/(gamma-1))*[(P2/P1)^((gamma-1)/gamma)-1]//compreesd energy requirement 
printf("\n energy requirement W_s=%f btu/lbmol of air",W_s);
hp=W_s*(7.5/29)*778//power
printf("\n power hp=%f ft .lbf/min",hp);
