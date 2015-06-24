funcprot(0);clc; //Example 9.8 

//Initializing the variables
V = 300 ;// Volume rate
w = 3;
d = 65;
l = 30;
scaleH = 30/1000/18;
scaleV = 1/60;
ZmByZr = 1/60;
LmByLr = 1/600;
rho = 1000;
mu = 1.14*10^-3;

//Calculations
Vr = V/(w*d); 
Vm =Vr*sqrt(ZmByZr);
m = (w*d*scaleH*scaleV)/(d*scaleH + 2*w*scaleV);
Rem = rho*Vm*m/mu;
TmByTr = LmByLr*sqrt(1/ZmByZr);
Tm = 12.4*60*TmByTr;

disp(Tm, "Tidal Period (minutes):");