//ques-25.23
//Calculating volume occupied by ideal gas equation and compressibility factor
clc
Z=0.2007;//compressibility factor
T=273;//temperature (in K)
P=101.325*10^5;//pressure (in N/m^2)
n=0.1;//moles of CO2
//Ideal Gas equation
V1=(n*8.314*T)/P;
//Compressibility factor
V2=(Z*n*8.314*T)/P;
printf("The volume calculated using ideal gas equation is %.04f L and using compressibility factor is %.4f L.",V1*1000,V2*1000);
