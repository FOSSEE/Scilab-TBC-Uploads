//ques-25.19
//Calculating mean free path of oxygen
clc
dia=3.61*10^-10;//collision diameter (in m)
T=273+25;//temperature (in K)
N_V=(6.023*10^23)/(0.0224*T/278);
w=1/(sqrt(2*%pi)*N_V*dia^2);
printf("The value of mean free path is %.2f nm.",w*10^9);
