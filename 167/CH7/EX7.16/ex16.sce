//ques16
//Effect of Efficiency on Nozzle Exit Velocity
clear
clc
//The exit velocity of the air will be a maximum when the process in the nozzle involves no irreversibilities
T1=950;//initial temp in K
P2s=80;//pressure in kPa
P1=200;//initial pressure in kPa
k=1.354;//isentropic ratio
T2s=T1*(P2s/P1)^(1-1/k);//temp in K
//using Ein = Eout we can get V2s
Cpavg=1.099;//avg specific heat at constant pressure in kJ/kg.k
V2s=sqrt(2000*Cpavg*(T1-T2s));//velocity in m/s
printf('(a) The maximum possible exit velocity = %.2f m/s \n',V2s);

//(b) The actual exit temperature of the air is higher than the isentropic exit temperature evaluated above
n=0.92;//efficiency
T2a=T1-n*(T1-T2s);//temp in K
printf(' (b) The exit temperature = %.0f K \n',T2a);

//(c) The actual exit velocity of air can be determined from the definition of isentropic efficiency of a nozzle
V2a=sqrt(n*V2s^2);//velocity in m/s
printf(' (c) Exit velocity of air = %.0f m/s ',V2a);

 