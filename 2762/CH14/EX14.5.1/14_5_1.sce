//Transport Processes and Seperation Process Principles
//Chapter 14
//Example 14.5-1
//Mechanical-Physical Seperation Processes
//given data in english units
Df=3/12;//feed size in feet
Dp=(1/8)/12;//productr size in ft
T=10/60;//feed rate in ton/min
//Bonds Equation(English units):(P/T)=1.46E1((1/Dp^0.5)-(1/Df^0.5))
E1=12.68;
P=T*(1.46*E1*((1/sqrt(Dp))-(1/sqrt(Df))));
mprintf("gross power reqd= %f hp",P)
