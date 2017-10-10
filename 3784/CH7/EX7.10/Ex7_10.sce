clc
//Variable initialisation
V=400//Supply voltage in volts
f=50//Supply Frequency in Hz
P=6//No of poles
Rs=0.2//stator resistance in ohm
Rr=0.07//Rotor resistance in ohm
Xs=0.4//Stator impedance in ohm
Xr=0.4//Rotor impedance in ohm
Sm1=0.25//Maximum Slip at 25% speed range
N1=750//Speed in rpm
a1=130
am=150//maximum Firing Angle
n=2//Stator to rotor turns ratio
Rd=0.02//Dc link resistance in ohm
N2=950//Speed in rpm
N3=850//Speed in rpm
//Solution
V1=V/sqrt(3)
Ns=120*f/P//Synchronous speed in rpm
Wms=Ns*2*%pi/60
a=-Sm1/cosd(am)//At 25% speed Range
m=2/a//Transformer Turns Ratio
S1=(Ns-N1)/Ns
Vd11=3*sqrt(6)*S1*V1/(%pi*n)
Vd21=3*sqrt(6)*V1*cosd(a1)/(%pi*m)
Rs1=Rs/(n^2)
Rr1=Rr/(n^2)
Id1=(Vd11+Vd21)/(2*((S1*Rs1)+Rr1)+Rd)//The answers vary due to round off error
T1=abs(Vd21)*Id1/(S1*Wms)//The answers vary due to round off error
S2=(Ns-N2)/Ns
Tr=(3/Wms)*V1^2*(Rr/S2)/((Rs+(Rr/S2))^2+(Xs+Xr)^2)//Rated torque in N-m
Thr=Tr/2//Half rated Torque in N-m
S3=(Ns-N3)/Ns
X=poly(0,'X')//let X=cos(a2)
Vd12=3*sqrt(6)*S3*V1/(%pi*n)
Vd22=3*sqrt(6)*V1*X/(%pi*m)
Id2=(Vd12+Vd22)/(2*((S3*Rs1)+Rr1)+Rd)
T2=abs(Vd22)*Id2/(S3*Wms)
//Equating T2 to Thr
0==5547.31*X^2-2878.788*X+349.52//Polynomial Equation in X
X1=(2878.788+sqrt((2878.788^2)-4*5547.31*349.52))/(2*5547.31)//Roots of polynomial eqn
X2=(2878.788-sqrt((2878.788^2)-4*5547.31*349.52))/(2*5547.31)//Roots of polynomial eqn
a11=acosd(-X1)
a22=acosd(-X2)
printf('\n\n Transformer Turns Ratio=%0.1f \n\n',m)
printf('\n\n Torque for 750rpm and alpha 130=%0.1f N-m\n\n',T1)
printf('\n\n The Field Current=%0.1f \n\n',a11)
printf('\n\n The Field Current=%0.1f \n\n',a22)
//The answers vary due to round off error
