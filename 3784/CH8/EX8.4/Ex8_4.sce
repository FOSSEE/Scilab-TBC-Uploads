clc
P=5e+5//rated power output in Watts
P1=25e+4// power at half rated torque
f=50//frequency in Hz
If=10//rated firld current in amp
Xs=10//reactance in ohm
p=4//no.of poles
Vl=33e+2//line voltage in volts
N1=1500
//Solution
Vph=Vl/sqrt(3)//phase voltage in volts
Is=P/(sqrt(3)*Vl*0.8)//Current in amp
theta1=acosd(0.8)
E=Vph-(-%i*Xs*(Is*(%i*sind(theta1)+cosd(theta1))))
y=imag(E)
x=real(E)
Er=sqrt((y^2)+(x^2))
theta2=atand(y/x)
Ia=Is
E2=Vph+(%i*Ia*Xs)
y2=imag(E2)
x2=real(E2)
Er2=sqrt((y2^2)+(x2^2))
theta3=atand(y2/x2)
P=3*Vph*Er2*sind(-theta3)/Xs
Wms=2*%pi*N1/f
T=P/Wms
If1=Er2*If/Er
If2=12
Er3=Er*If2/If
P2=-500e+3
d1=asind(P2*Xs/(3*Vph*Er3))
Is=(Vph-Er3*(cosd(d1)+(%i*sind(d1))))/(%i*Xs)
Isr=abs(Is)
u=imag(Is)
v=real(Is)
pf=cosd(atand(u/v))
printf('\n\n The Breaking Torque for machine operation at rated current and upf=%0.1f N-m\n\n',T)
printf('\n\n The Field Current for machine operation at rated current and upf=%0.1f Amp\n\n',If1)
printf('\n\n The Armature Current at 12 A Field Current=%0.1f Amp\n\n',Isr)
printf('\n\n The power factor at 12 A Field Current=%0.1f lead\n\n',pf)
//The answers vary due to round off error