
clear//

//Variable Declaration
A=2630 //Area in mm^2
y_bar=536.6 //Neutral Axis depth from top in mm
tau_w=100 //Allowable stress in MPa
sigma_b_w=280 //Allowable bending stress in MPa
d=0.019 //Diameter of the rivet in m
t_web=0.01 //Thickness of the web in m
I=4140 //Moment of inertia in m^4
V=450 //Max shear allowable in kN

//Calculations
Q=A*y_bar //first moment in mm^3
Fw=(%pi*d**2)*tau_w*10**6 //Allowable force in N
Fw_2=d*t_web*sigma_b_w*10**6*0.5 //Allowable force in N
e=Fw_2*I*(V*10**3*Q*10**-3)**-1 //Allowable spacing in m

//Result
printf("\n The maximum spacing allowed is %0.1f mm",e*1000)
