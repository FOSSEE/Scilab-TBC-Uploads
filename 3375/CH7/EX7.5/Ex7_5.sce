//Example 7.5
//Drag force
//Page No. 433
clc;clear;close;

U=3;          //in m/s
b=1;           //in m
L=1;           //in m
Re_x=5*10^5;      //no unit
rho=1025;        //in kg/m^3
nu=1.044*10^-6;        //in m^2/s
Re_l=U*L/nu;        //reynolds number on the basis of keel length

//assuming turbulent boundary-layer
Cf=0.074/Re_l^(1/5);
Tw=rho*U^2*Cf/2;
D1=Tw*b*L;
Df=2*D1;
printf('\nTotal Drag Force on the keel (assuming turbulent boundary-layer)= %f N',Df);

//taking into account the growth of laminar growtn boundary
x_tr=Re_x*nu/U;
d_tr=x_tr*5/sqrt(Re_x);
Cf_lam=1.328/sqrt(Re_x);
D1=rho*U^2*b*(Cf*L-Cf*x_tr+Cf_lam*x_tr)/2;
Df=2*D1;
printf('\nTotal Drag Force on the keel (taking into account the growth of laminar growtn boundary)= %f N\n\n\nNote: Computational Error in the book',Df);
