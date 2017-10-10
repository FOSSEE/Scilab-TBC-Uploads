clc
clear
//INPUT DATA
Re=1;//Heat absorbed in Tonns
WD=1.25*60;//work done in kJ/min
Tmin=-40;//low tamperature in Degree C
Ha=210;//heat absorbed in kJ/min

//CALCULATIONS
COP=(Re*210)/WD;//COP
Tmax=((273+Tmin)/COP)+Tmin;//High temperature of the cycle 
Hd=Ha+WD;//Heat rejected in kJ/min
COPh=Hd/WD;COP;// heat pump


//OUTPUT
printf('(i)COP is %3.2f \n (ii)Tmax is %3.2f Degree C \n (iii)Heat rejected is %3.i kJ/min \n (iv)COP of heat pump is %3.1f ',COP,Tmax,Hd,COPh)
