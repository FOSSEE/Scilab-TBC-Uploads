clear all
clc
close

dia=0.03*1e-3;//Diameter of drop in m
rho=2000;//Desnity of ink in kg/m
vz=25;//velocity in z direction in m/sec
L1=15*1e-3;//Length of deflection plate in m
L2=12*1e-3;//distance from the exit end of the deflection plate to the print surface in m
q=100*1e-15;//Charge of drop in C
d=2*1e-3;//Spacing in m
Vo=3500;//Charging voltage in V

//Mass of drop in kg
m=(4/3)*%pi*rho*(dia/2)^3;

to=L1/vz;
vxo=q*Vo*to/(m*d);
xo=0.5*vxo*to;

t1=(L1+L2)/vz;
printf("time required for the drop to reach the print surface is %f s \n",t1)

//Calculation of vertical displacement of the drop on the print surface in mm
x1=xo+vxo*(t1-to);
printf('Vertical displacement of the drop on the print surface is %f m \n',x1)
