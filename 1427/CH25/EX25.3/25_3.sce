//ques-25.3
//Calculating root mean square velocity and average velocity of gas molecules
clc
den=1.2504;//density (in kg/kL)
T=273+0;//temperature (in K)
P=1;//pressure (in atm)
R=8.314;
M=den*22.4;//molar mass (in g/mol)
Crms=sqrt((3*R*T)/(M/1000));
Cavg=sqrt((8*R*T)/(%pi*M/1000));
printf("The rms velocity is %d m/s and average velocity is %d m/s.",Crms,Cavg);
