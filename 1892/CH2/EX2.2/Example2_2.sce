// Example 2.2

clear; clc; close;
format('v',7);

// Given data
V1=110;//in volt
Z1=2+%i*3;//in ohm
Zeq_rotor=2+%i*3;//in ohm
Xo=50;//in ohm(Magnetising impedence)
Losses=25;//in watt(friction & voltage loss)
S=5/100;//slip

//Calculations
R1=real(Z1);//in Ω
X1=imag(Z1);//in Ω
R2=real(Zeq_rotor);//in Ω
X2=imag(Zeq_rotor);//in Ω
r2=R2/2;//in Ω
x2=X2/2;//in Ω
xo=Xo/2;//in ohm
Zf=%i*xo*(r2/S+%i*x2)/(r2/S+%i*(xo+x2));//in ohm
Zb=%i*xo*(r2/(2-S)+%i*x2)/(r2/(2-S)+%i*(xo+x2));//in ohm
Zeq=Z1+Zf+Zb;//in ohm
I1=V1/Zeq;//in Ampere
InputCurrent=abs(I1);//in Ampere
disp(InputCurrent,"Input current in Ampere : ");
PF=cos(atan(imag(I1),real(I1)));
disp(PF,"Power factor(lagging) : ");
Vf=I1*Zf;//in volt
I2f=Vf/(r2/S+%i*x2);//in Ampere
Vb=I1*Zb;//in Volt
I2b=Vb/(r2/(2-S)+%i*x2);//in Ampere
Pf=abs(I2f)^2*r2/S;//in watts
Pb=13.88;//in watts
Pm=(1-S)*(Pf-Pb);//in watts
Pout=Pm-Losses;//in watts
Pin=V1*abs(I1)*PF;//in watts
Eff=Pout/Pin*100;//in %
disp(Eff,"Efficiency in % : ");
