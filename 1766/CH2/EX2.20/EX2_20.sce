clc;funcprot(0);//Example 2.20
//Initilisation of Variables
r1=5;....//inner radius of pipe in cm
r2=7;....//outer radius of pipe in cm
T1=100;....//inner surface temparature of pipe in degrees celcius
T2=80;....//outer surface temparature of pipe in degrees celcius
Kc=387;....//thermal conductivity of pipe if it is pure copper in W/m*degrees celcius
Ka=200;....//thermal conductivity of pipe if it is pure aluminium in W/m*degrees celcius
Ki=62;....//thermal conductivity of pipe if it is pure iron in W/m*degrees celcius
L=1;....// length of the pipe
//calculations
Rc=log(r2/r1)/(2*%pi*Kc*L);...//resistance of copper pipe in degrees celcius/W
Ra=log(r2/r1)/(2*%pi*Ka*L);...//resistance of aluminium pipe in degrees celcius/W
Ri=log(r2/r1)/(2*%pi*Ki*L);...//resistance of iron pipe in degrees celcius/W
Qc=(T1-T2)/Rc;...//heat loss of copper pipe in W
Qa=(T1-T2)/Ra;...//heat loss of aluminium pipe in W
Qi=(T1-T2)/Ri;...//heat loss of  iron pipe in W
disp(Qc/1000,"heat loss of copper pipe in kW:")
disp(Qa/1000,"heat loss of aluminum pipe in kW:")
disp(Qi/1000,"heat loss of iron pipe in kW:")
