//ques-18.46
//Calculating decrease in chemical potential of benzene
clc
T=298;//temperature (in K)
x_s=0.1;//mole-fraction of solute
x_b=1-x_s;//mole-fraction of benzene
C_P=8.314*T*log(x_b);
printf("The decrease in chemical potential is %.2f J/mol.",C_P);
