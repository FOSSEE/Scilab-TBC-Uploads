//Example 5.7//
D=(-1.0*10^-8);//m^2/s //constant diffusion coefficient
ch=1.5;//kg/m^3 //constant surface concentrationsof the diffusing species
ct=0.3;//kg/m^3 //constant surface concentrationsof the diffusing species
x=5*10^-3;//m //meter //solid of thickness
y=(-D)*(((ch-ct)/(x)))
//mprintf("y = %e kg/m^2 h",y)
t=3.6*10^3;//s/h //time
J=y*t
mprintf("J = %e kg/m^2.h",J)
//The total mass of hydrogen being purified will then be this flux times the membrane area
A=0.2;//m^2 //membrane area
m=J*A
mprintf("\nm = %e kg/h",m)
