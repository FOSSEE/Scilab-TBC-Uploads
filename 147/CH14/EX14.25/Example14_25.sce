close();
clear;
clc;
V = 400; //V
f = 60; //Hz
p = 4;
R1 = 0.2; //ohm
X1 = 0.5; //ohm
Xm = 20; //ohm
X2_ = 0.2; //ohm
R2_ = 4; //ohm
loss = 800; //W
n = 1755; //rpm

ns = 120*f/p;
s = (ns-n)/ns;
Z = R1 + %i*X1 + (%i*Xm)*(R2_ + %i*X2_)/(R2_ + %i*(Xm+X2_));
Zr = real(Z);
Zi = imag(Z);
Zarg = 180/%pi * atan(Zi/Zr);
Z = sqrt(Zr^2 + Zi^2);

//phase volatge 'Vp'
Vp = V/sqrt(3); //V

//(a)
//input current 'I'
I = Vp/Z;
mprintf("(a) Input current, I = %0.2f A\n\n",I);

//(b)
//total input power 'Pi'
Pi = sqrt(3)*I*cos(Zarg*%pi/180); //kW
mprintf("(b) Input power, Pi = %0.2f kW\n\n",Pi);

//(c)
R = 3.77; //ohm
Ps = 3*(I^2)*R; //kW
//total power developed 'Pd'
Pd = (1-s)*Ps; //kW
//total output power 'Po'
Po = Pd - loss;
mprintf("(c) Output power, Po = %0.2f kW\n\n",Po/1000);

//(d)
w = 2*%pi*n/60;
//output torque 'T'
T = Po/w; //Nm
mprintf("(d) Output torque, T = %0.1f N.m\n\n",T);
//(e)
//efficiency 'eff'
eff = Po/(Pi*1000);
mprintf("(e) Efficiency = %0.1f %%",eff*100);