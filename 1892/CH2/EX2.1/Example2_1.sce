// Example 2.1

clear; clc; close;
format('v',6);

// Given data
Is=220;//in Ampere
//For no load
Vo=220;//in volt
Io=6;//in Ampere
wo=350;//in watt

//From locked rotor test
Vsc=125;//in volt
Isc=15;//in Ampere
Wsc=580;//in watt
R1=1.5*1.2;//in Ω

//Calculations
Zeq=Vsc/Isc;//in Ω
Req=Wsc/Isc^2;//in Ω
Xeq=sqrt(Zeq^2-Req^2);//in Ω
R1=1.5*1.2;//1.5 times more
R2=Req-R1;//in Ω
//assume X1=X2; Xeq=X1+X2=2*X2
X2=Xeq/2;//in Ω
X1=X2;//in Ω
r2=R2/2;//in Ω
x2=X2/2;//in Ω

cos_fio=wo/(Vo*Io);//unitless
fi_o=acosd(cos_fio);//in degree
Io=Io*expm(%i*-fi_o*%pi/180);//in Ampere(polar form)
VAB=Vo-Io*[R1+r2/2+%i*(X1+X2/2)];//in volt
Xo=abs(VAB)/abs(Io);//in ohm
Xeq=2*Xo;//in ohm
S=5/100;//slip
Zf=Xo*expm(%i*%pi/2)*(r2/S+%i*X2/2)/(r2/S+%i*(X2/2+Xo));//in ohm
Z1=R1+%i*X1;//in ohm
Z2=6.4819+%i*3.416;//in ohm
Zeq=Z1+Z2+Zf;//in ohm
I1=Vo/Zeq;//in Ampere
PF=cos(atan(imag(I1),real(I1)));//lagging Power factor
disp(PF,"Power factor(lagging) : ");
Vf=I1*Zf;//in volt
I2f=Vf/(r2/S-%i*X2/2);//in Ampere
Zb=Zf;//in ohm
Vb=I1*Zb;//in Volt
I2b=Vb/(r2/(2-S)+%i*X2);//in Ampere
Pf=abs(I2f)^2*r2/S;//in watts
Pb=abs(I2b)^2*r2/(2-S);//in watts
Pm=(1-S)*(Pf-Pb);//in watts
Wo=350;//in watts
Pout=Pm-Wo;//in watts
Pin=Vo*abs(I1)*PF;//in watts
Eff=Pout/Pin*100;//in %
disp(Eff,"Efficiency in % : ");
//Answer in the book is wrong. Lots of mistake in the solution while calculating Zf. 
