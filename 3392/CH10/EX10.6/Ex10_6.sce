clc
// initialization of variables
clear
P=30.0 //kN
a=500 //mm
h=102 //mm
b=68 //mm
k=23.8 //N/mm^2
Beta=0.001852
Ix=2.53e+06 //mm^4
//calculations
P=P*10^3
C_ba=exp(-Beta*a)*(-sin(Beta*a)+cos(Beta*a))
D_ba=exp(-Beta*a)*cos(Beta*a)
// y = P*Beta/(2*k)*(A_bz+2*D_ba*D_baz+C_ba*C_baz))
// Mx = P/(4*Beta)*(C_bz-2*D_ba*B_baz-C_ba*A_baz)
A_ba=exp(-Beta*a)*(sin(Beta*a)+cos(Beta*a))
B_ba=exp(-Beta*a)*sin(Beta*a)
C_ba=exp(-Beta*a)*(-sin(Beta*a)+cos(Beta*a))
D_ba=exp(-Beta*a)*cos(Beta*a)
z1=424 //mm
z=z1-a
A_bz=exp(-Beta*z)*(sin(Beta*z)+cos(Beta*z))
B_bz=exp(-Beta*z)*sin(Beta*z)
C_bz=exp(-Beta*z)*(-sin(Beta*z)+cos(Beta*z))
D_bz=exp(-Beta*z)*cos(Beta*z)
// to find out X_baz
z=a+z
A_baz=exp(-Beta*z)*(sin(Beta*z)+cos(Beta*z))
B_baz=exp(-Beta*z)*sin(Beta*z)
C_baz=exp(-Beta*z)*(-sin(Beta*z)+cos(Beta*z))
D_baz=exp(-Beta*z)*cos(Beta*z)
y_max = P*Beta/(2*k)*(A_bz+2*D_ba*D_baz+C_ba*C_baz)
printf('y_max = %.4f mm',y_max)
// For M_max
z1=500 //mm
z=z1-a
A_bz=exp(-Beta*z)*(sin(Beta*z)+cos(Beta*z))
B_bz=exp(-Beta*z)*sin(Beta*z)
C_bz=exp(-Beta*z)*(-sin(Beta*z)+cos(Beta*z))
D_bz=exp(-Beta*z)*cos(Beta*z)
// to find out X_baz
z=a+z
A_baz=exp(-Beta*z)*(sin(Beta*z)+cos(Beta*z))
B_baz=exp(-Beta*z)*sin(Beta*z)
C_baz=exp(-Beta*z)*(-sin(Beta*z)+cos(Beta*z))
D_baz=exp(-Beta*z)*cos(Beta*z)
M_max = P/(4*Beta)*(C_bz-2*D_ba*B_baz-C_ba*A_baz)
printf('\n M_max = %d N.mm',M_max)
S_max=M_max*h/(2*Ix)
printf('\n Sigma_max = %.1f MPa',S_max)
