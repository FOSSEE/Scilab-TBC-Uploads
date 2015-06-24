clc
//initialisation of variables
R= 53.3 //ft lbf/lbf R
T= 60 //F
P= 30 //in
P1= 29 //in
//CALCULATIONS
z= R*(T+460)*log(P/P1)*0.044/0.0339
//RESULTS
printf ('height = %.f ft',z)
