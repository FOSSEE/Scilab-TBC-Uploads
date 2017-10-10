clc
clear
//INPUT DATA
COP=4;//COP
WD=20;//workdone of cycle in kW

//CALCULATIONS
x=1+(1/COP);//Ratio of temperatures
Re=COP*WD;//Refrigeration effect in kW
Re1=Re*60;//Refrigeration effect in kJ/min
Re2=Re1/210;//Refrigeration effect in TR
Hd=Re+WD;//Heat delivered in kW
COP1=Hd/WD;//COP of heat pump

//OUTPUT
printf('(i)Temperature ratio is %3.2f \n (ii)maximum refrigeration effect is %3.2f TR \n (iii)COP of heat pump is %3.2f',x,Re2,COP1)
