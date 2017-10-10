close();
clear;
clc;
//From previous question 
Vo = 309.8;//V
Vt = 127;
Xd = 4;
Xq = 2;
delta = 20.25//Deg
phi = 45;//Deg
Pr = 20000;//VA
Pf = 0.707;//lagging
Pd = Vo*Vt/Xd*sin(delta*%pi/180)+Vt^2/Xq*(1/Xq-1/Xd)*sin(2*delta*%pi/180);
Pl = Pr*Pf/3;
Ps = 3*Vt^2/Xq*(1/Xq-1/Xd)*sin(2*delta*%pi/180);
mprintf('Power developed by generator = %0.1f W\nPower supplied to the load = %0.1f W\nPower due to saliency = %0.0f W',Pd,Pl,Ps);