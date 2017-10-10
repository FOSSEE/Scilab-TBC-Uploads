clc
clear
//INPUT DATA
Th=600;//engine temprature in Degree C
p3=5;//Pressure of air in bar
v3=4;//volume of air in m^3
v43=3;//Isentropic volume expansion
v23=6;//Isentropic compression ratio

//CALCULATIONS
p4=p3*(1/(v43));//pressure of carnot cycle
p1=p4*(1/(v23))^(1.4);//pressure of carnot cycle
t1=(Th+273)*(1/(v23))^(0.4);//Temperature of carnot cycle
p2=p1*(v43);//pressure of carnot cycle
Qs=p3*10^2*v3*log(v43);//heat supplied to the cycle
Qr=p3*v3*(t1/Th)*log(v43);//Heat rejected by the system
nc=(((Th+273)-t1)/(273+Th))*100;//Thermal efficiency in percentage
w=Qs-Qr;//work done in kJ
pm=w/(17*2*v3*100);//Mean effective pressure in bar

//OUTPUT
printf('(a)The pressure  of carnot cycle is %3.3f bar \n temperature of carnot cycle is %3.4f K \n (b)Heat supplied to the cycle %3.2f kJ \n (c)Thermal efficiency is %3.2f percentage \n (d)Mean effective pressure is %3.4f bar ',p1,t1,Qs,nc,pm)


