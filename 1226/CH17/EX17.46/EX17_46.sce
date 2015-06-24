clc;funcprot(0);//EXAMPLE 17.46
// Initialisation of Variables
n=4;..........................//No of cylinders
D=0.06;......................//Engine bore in m
L=0.09;.......................//Engine stroke in m
N=2800;.......................//Engine rpm
Ta=0.37;.......................//Length of torque arm in m
spgr=0.74;.....................//Specific graviy of fuel 
fc=8.986;......................//Fuel consumption in ltrs/h
mf=fc*spgr;.....................//Fuel consumed in kg/h
C=44100;......................//Calorific value of fuel in kJ/kg
BPnl=160;.................//Net brake load in N
BP1=110;...................//Brake load with cylinder no 1 cutout in N
BP2=107;...................//Brake load with cylinder no 2 cutout in N
BP3=104;...................//Brake load with cylinder no 3 cutout in N
BP4=110;...................//Brake load with cylinder no 4 cutout in N
k=0.5;.....................//Four stroke engine
//Calculations
T=BPnl*Ta;.......................//Engine torque in N-m
disp(T,"Engine torque in Nm:")
BP=(2*%pi*N*T)/(60*1000);..........................//Brake power in kW
pmb=(BP*6)/(n*D*D*L*N*10*(%pi/4)*k);...................//Brake mean effective pressure in bar
disp(pmb,"Brake mean effective pressure in bar:")
etabth=BP/((mf/3600)*C);...........................//Brake thermal efficiency
disp(etabth*100,"Brake thermal efficiency in %:")
sfc=mf/BP;.......................//Specific fuel consumption in kg/kWh
disp(sfc,"Specific fuel consumption in kg/kWh:")
IP1=BPnl-BP1;...........................//Indicated power produced in cylinder 1 in kW
IP2=BPnl-BP2;...........................//Indicated power produced in cylinder 2 in kW
IP3=BPnl-BP3;...........................//Indicated power produced in cylinder 3 in kW
IP4=BPnl-BP4;...........................//Indicated power produced in cylinder 4 in kW
IP=IP1+IP2+IP3+IP4;.............................//Total Indicated power produced in kW
etamech=BPnl/IP;..............................//Mechanical efficiency
disp(etamech*100,"Mechanical efficiency in %:")
pmi=pmb/etamech;............................//Indicated mean effective pressure in bar
disp(pmi,"Indicated mean effective pressure in bar:")

