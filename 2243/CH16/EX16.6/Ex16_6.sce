clc();
clear;
//Given :
V = 9*10*11; // Volume in ft^3
T = 4; // reverberation time in s
S = 2*((9*10)+(10*11)+(11*9));// total surface area in ft^2
//T = (0.049*V)/(alpha*S)
alpha = (0.049*V)/(S*T);//average absorption coefficient 
T1 = 1.3; // reverberation time in s
S1 = 50; // total surface area in ft^2
alpha_e =(((0.049*V)/S1)*((1/T1)-(1/T))) + alpha ; // effective absorption coefficient 
printf("alpha = %.2f  \n",alpha);
printf("alpha_e = %.2f  ",alpha_e);
