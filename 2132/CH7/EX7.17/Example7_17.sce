////Example 7.17
clc;
clear;
close;
format('v',9);
//Given data :
g=9.81;//gravity constant
Cv=0.97;//coeffiecient of velocity
Cc=0.95;//coeffiecient
Dn=50/1000;//meter(Nozzle diameter)
D=100/1000;//meter(Pipe diameter)
p=6.867;//N/cm^2(Pressure at the base of nozzle)
Hb=p*10^4/(g*1000)//meter(Head at the base of nozzle)
v=Cv*sqrt(2*g*Hb);//m/s(velocty of jet)
disp(v,"Velocity in the jet(m/s)");
A=%pi/4*Dn^2;//m^2(Cross sction of jet)
Q=Cc*A*v;//m^3/sec(Discharge)
Q=Q*1000;//litres/sec
disp(Q,"Rate of discharge(litres/second)");
E=g*1000*Q/1000*Hb/1000;//kW(Energy transmitted)
disp(E,"Energy per second n the jet(kW)");
//Answer in the book is not accurate.
