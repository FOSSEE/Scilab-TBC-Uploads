clc;
//Example 22.9
//page no 305 
printf("\n Example 22.9 page no 305\n\n");
//water is flowing from an elevated reservoir through a conduit to a turbine at a lower level and out of the turbine through a similar conduit  
//refer to fig 22.2
//since the diameter of the conduit is the same at location 1 and 2 ,kinetic energy effects can be  neglected and bernoulli eq. takes the form
//P/rho  + z(g/g_c)  -h_s + h_f  = 0
P1=30///pressure at point 1,psia
z1=300//height of point 1,ft
P2=18//pressure at point 2,psia
z2=-10//height of point 2,ft
rho=62.4//density
m_dot=3600//mass flow rate,tons/hr
W_dot =1000//output at the shaft of turbine,hp
neta=0.9//efficiency of turbine
h_s=W_dot*550*3600/(neta*m_dot*2000)//
printf("\n h_s =%f ft.lbf/lb",h_s);
//put this value in bernoulli eq.
h_f=(P2-P1)*144/rho + (z2-z1) -h_s//frictional loss
printf("\n frictional loss h_f=%f ft.lbf/lb",h_f)
