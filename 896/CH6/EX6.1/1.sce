clc
//Example 6.1
//calculate the drop in pressure per unit length in a pipe
q=50//gal/min flow rate
d=3.068//in inner diameter
a=(%pi)*(3.068/12)^2/4//ft^2
//1 ft^3 = 7.48 gal
//1 min = 60 sec
v_avg=q/a/60/7.48//ft/s
mew=50//cP
//1 cP = 0.000672 lbm/ft/s
rho=62.3//lbm/ft^3
R=(d/12)*v_avg*rho/(mew*0.000672)//dimentionless reynold's no.
if (R<2000)
  printf("Laminar flow\n");
else
  printf("Turbulent flow\n");
end
dx=3000//ft length of pipe
//1 gal = 231 in^3
//1 cP.ft^3 = 0.0000209 lbf.s
dp=(q/60)*(128/%pi)*(mew/d^4)*dx*231*0.0000209/12//lbf/in^2 or psi
//let D represent d/dx
Dp=(dp/dx)*100//psi/ft
printf("The pressure gradient in the pipe is %f psi/100ft",Dp);