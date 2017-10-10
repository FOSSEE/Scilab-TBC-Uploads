//Example 11_6
clc;clear;funcprot(0);
//Properties
rho=0.07350;// lbm/ft^3
nu=1.697*10^-4;// ft^2/s
//Given values
m=0.125;//lbm
D=2.52;// in
V=45;// mi/h
n=4800;// rpm
P=1;// atm
T=80;// degree F
g=9.81;// m/s^2

//Calculation
V=(45*5280)/3600;// ft/s
omega=(2*%pi*n)/60;// rad/s
C=(omega*D)/(2*V);//rad
//From Fig. 11–53, the lift coefficient corresponding to C
C_l=0.21;
A=(%pi*D^2)/4;// ft^2
F_l=(C_l*A*rho*V^2)/(2*32.2);// lbf
W=(m*g)/32.2;// lbf
if(W<=0.125)
    printf('drop')
else
    printf('Wrong')
end
