clc
//Example 15.4
//Install Symbolic toolbox
//Calculate the voltage
//From figure 15.9
//Applying nodal equation and solving for vx
syms s
s=%s
Vx=(10*s^2+4)/(s*(2*s^2+4*s+1))
Vxp=pfss (Vx)
Vxp1= ilaplace (Vxp(1))
Vxp2= ilaplace (Vxp(2))
vx=Vxp1+Vxp2
disp(vx,'vx=')
