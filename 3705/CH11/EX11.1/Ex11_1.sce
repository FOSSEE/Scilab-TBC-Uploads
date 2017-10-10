
clear//

//Variable Declaration
V=1000 //Force acting on he section in lb
t=0.5 //Thickness in inches
//Dimensions
d=8 //Depth of the section in inches
wf=12 //Width of the flange in inches
wbf=8 //Width of the bottom flange in inches

//Calculations
y_bar=((d*t*0)+wbf*t*4+wf*t*8)/(d*t+wbf*t+wf*t) //Location of Neutral Axis in inches
I=d*t*y_bar**2+t*d**3*12**-1+d*t*(d*t-y_bar)**2+wf*t*(8-y_bar)**2 //Moment of Inertia in in^4

//Top Flange
q1=V*t*t*wf*(8-y_bar)*I**-1 //Shear flow in lb/in
//Bottom Flange
q2=V*t*t*d*y_bar*I**-1 //Shear Flow in lb/in
//Web
qB=2*q1 //Shear Flow in lb/in
qF=2*q2 //Shear Flow in lb/in

//Max Shear Flow
qMAX=qB+V*t*(8-y_bar)**2*0.5*I**-1 //Maximum Shear Flow in lb/in

//Result
printf("\n The Maximum Shear Flow is %0.0f lb/in",qMAX)
