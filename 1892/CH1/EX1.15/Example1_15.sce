// Example 1.15

clear; clc; close;

format('v',8);
// Given data
Poles=12;//no. of poles
V1=420;//in volt
f=50;//in Hz
r1=2.95;//in watts
x1=6.82;//in watts
r2dash=2.08;//in watts
x2dash=4.11;//in ohm/phase
ImLine=6.7;//in Ampere
TcoreLoss=269;//in watts
S=3;//slip in %

//Calculations
S=S/100;//slip
Im=ImLine/sqrt(3);//in Ampere
Im_bar=Im*exp(%i*(-%pi/2))*(r1+%i*x1);//in Ampere
//V1=(E1+real(Im_bar))+imag(Im_bar) 
//Equating magnitude of both sides gives a polynomial for E1
P=[1 2*real(Im_bar) abs(Im_bar)^2-V1^2];
E1=roots(P);
E1=E1(2);//discarding -ve value
Xo=E1/Im;//in ohm
//Zeq=Xo*exp(%i*(%pi/2))*(r2dash/S)/(%i*Xo+%i*x2dash+r2dash/S);
Zeq=%i*Xo*(r2dash/S+%i*x2dash)/(%i*Xo+%i*x2dash+r2dash/S);
Zin=r1+%i*x1+Zeq;//in ohm
I1=V1/Zin;//in Ampere
disp("Magnitude is "+string(abs(I1))+" & angle in degree is "+string(atand(imag(I1),real(I1))));
cosfi=cosd(atand(imag(I1)/real(I1)));//lagging power factor
disp(cosfi,"Power factor(lagging) : ");
I2r_dash=I1*(%i*Xo)/(r2dash+%i*(Xo+x2dash));//in Ampere
//disp(I2r_dash,"Equivalent rotor current in Ampere : ");
disp("Magnitude is "+string(abs(I2r_dash))+" & angle in degree is "+string(atand(imag(I2r_dash),real(I2r_dash))));
Ns=120*f/Poles;//in rpm
T=9.55*3*real(I2r_dash)^2*r2dash/S/Ns;//in N-m
disp(T,"Torque devloped in N-m : ");
Zth=(r1+%i*x1)*%i*Xo/((r1+%i*x1)+%i*Xo);//in Ohm
Rth=real(Zth);//in ohm
Xth=imag(Zth);//in ohm
Vth=V1*(%i*Xo)/(r1+%i*(Xth+Xo));//in Volt
Ws=(2*%pi*Ns/60);//in rad/sec
Tm=(3/Ws)*0.5*real(Vth)^2/(Rth+sqrt(Rth^2+(Xth+x2dash)^2));//in N-m
disp(Tm,"Maximum torque devloped in N-m : ");
Sm=r2dash/sqrt(Rth^2+(Xth+x2dash)^2);//slip
Nm=Ns*(1-Sm);//
disp(Nm,"Speed at maximum torque in rpm : ");
//Answer for rotor equivalent Current and Torque developed is wrong in the book.
