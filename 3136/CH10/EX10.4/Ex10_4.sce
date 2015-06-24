clear all; clc;
H=80
Q=63
Es=0.97
N=400
V3=25
Dh3=2
rh3=1/12
g=32.2

Ksigma=2.11
n=N/60
sigma=(Ksigma*n*(Q^0.5))/((g*H)^0.75)
printf(" The value of sigma is equal to %0.2f ", sigma)

disp("We have thita=2.4. Thita is also equal to Kt*D2*((g*H)^0.25)/(Q^0.5)")
thita=2.4
Kt=1.054
D2=(thita*(Q^0.5))/(Kt*((g*H)^0.25))
printf(" Thus the value of D2 is %0.1f ft",D2)

D2r=2.5//rounded off D2
U2=(D2r*N*%pi)/60
printf("\n U2 is equal to %0.2f ft/s",U2)

V2=(2*g*H*Es)^0.5
printf("\n The inlet flow velocity V2 is equal to %0.2f ft/s",V2)

disp("From the inlet velocity diagram for alpha2=20 degrees we have Vr2=V2*sinalpha2")
alpha2=20
Vr2=V2*(sin(alpha2*%pi/180))
printf(" Vr2 is equal to %0.2f ft/s",Vr2)

tanbeta2=Vr2/(V2*(cos(alpha2*%pi/180))-U2)
printf("\n The value of tanbeta2 is %0.2f",tanbeta2)
beta2=(atan(tanbeta2))*180/%pi
printf("\n Thus value of beta2 is %0.1f degrees",beta2)

disp("Selecting the incidence i=2.2 degrees we have betab2=62 degrees")

disp("A2=Q/Vr2=(%pi*D2*b2) From this equation we can determine the value of b2.")
A2=Q/Vr2
printf(" A2 is equal to %0.2f ft^2",A2)
b2=A2/(%pi*D2)
printf("\n b2 is equal to %0.2f ft",b2)
disp("Thus b2= 4 inches")

disp("At the outlet with rh3=1 inch, setting gamma=15 degrees and V3=25")
gamma1=15
 A3=Q/V3
printf(" The value of A3 is equal to %g ft^2",A3)
 rt3=((A3*(cos(gamma1*%pi/180)))/%pi+(rh3^2))^0.5
 printf("\n The value of rt3 is %0.2f ft",rt3)
 disp("On converting the value of rt3 from feet to inches we get rt3=10.6inches")
 
 rt3c=10.6//converted value of rt3
 rh3c=1//converted value in inches
 rm3=((((rt3c^2+ rh3c^2)/2)^0.5)/12)
 printf(" The mean radius rm3 is equal to %0.3f ft",rm3)
 Um3=26.3 
 tanbetam3=V3/Um3
 printf("\n The value of tanbetam3 %0.2f",tanbetam3)
 betam3=atan(tanbetam3)*180/%pi
 printf("\n The value of betam3 whih is equal to betabm3 if no deviation is assumed is equal to %0.2f degrees",betam3)
 disp("On rounding off we get the value og betam3=43.6 degrees")

















