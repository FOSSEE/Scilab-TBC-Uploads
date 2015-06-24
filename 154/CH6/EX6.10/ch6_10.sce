clc
printf("Given")
disp("R1=1 ohm;R2=1/2 ohm;R3=1/4 ohm;R4=1/8 ohm")
disp("Rf=1 ohm")
//From figure 6.14
//THe output of summing circuit can be written as
disp("v0=-((Rf/R1)*v1+(Rf/R2)*v2+(Rf/R3)*v3+......")
//From above equation
disp("v0=-(8v4+4v3+2v2+v1)-----------(1)")
disp("a)")
v1=1;v2=0;v3=0;v4=1;
//Substituting in equation (1)
v0=-(8*v4+4*v3+2*v2+v1)
printf("v0=%dV\n",v0);

disp("b)")
v1=0;v2=1;v3=1;v4=1;
//Substituting in equation (1)
v0=-(8*v4+4*v3+2*v2+v1)
printf("v0=%dV\n",v0);
