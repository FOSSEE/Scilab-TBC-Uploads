clear; clc; close;

Vt=26*(10^(-3));      //thermal voltage
Ie=3.2*(10^(-3));	  //emitter current
Beta=150;            //Common Emitter amplification factor
Rl = 2*(10^(3));    //Load Resistance

re = Vt/Ie;
Zi = Beta*re;
disp(Zi,"Input Impedance(ohms) is : ");

Av = -(Rl/re);
disp(Av,"Voltage gain is :");

Ai = Beta;
disp(Ai,"Current gain is :");

