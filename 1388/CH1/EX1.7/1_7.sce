clc
//initialisation of variables
T= 0 //C
T1= 100 //C
R= 8.314 //atm lit/mol K
n= 3
M= 2.016 //gm
M1= 28.02 //gm
M2= 146.1 //gm
//CALCULATIONS
u= sqrt(n*R*10^7*(T+273.2)/M)
u1= sqrt(n*R*10^7*(T+273.2)/M1)
u2= sqrt(n*R*10^7*(T+273.2)/M2)
u3= sqrt(n*R*10^7*(T1+273.2)/M)
u4= sqrt(n*R*10^7*(T1+273.2)/M1)
u5= sqrt(n*R*10^7*(T1+273.2)/M2)
//RESULTS
printf (' root mean square velocity = %.2f cm/sec',u*10^-4)
printf (' \n root mean square velocity = %.2f cm/sec',u1*10^-4)
printf (' \n root mean square velocity = %.2f cm/sec',u2*10^-4)
printf (' \n root mean square velocity = %.2f cm/sec',u3*10^-4)
printf (' \n root mean square velocity = %.2f cm/sec',u4*10^-4)
printf (' \n root mean square velocity = %.2f cm/sec',u5*10^-4)
