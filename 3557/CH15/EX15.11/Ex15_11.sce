//Example 15.11//

q=0.16*10^-18;//C/ion //unit charge
a=1;//ion
b=4;//given
c=6*10^-3;//nm
d=10^-9;//m/nm
Ti=a*b*q*c*d
mprintf("Ti = +%e C m",Ti)
a1=2;//ions
b1=(-2);//given
c1=-6*10^-3;//nm
O2m=a1*b1*q*c1*d
mprintf("\nO2m = +%e C m",O2m)
c2=-9*10^-3;//nm
O2b=a*b1*q*c2*d
mprintf("\nO2b = +%e C m",O2b)
Qd1=Ti+O2m+O2b
mprintf("\nQd1 = %e C m",Qd1)
//(b)
//For Cubic BaTiO3, there are not net shift and by , deffinition
mprintf("\nQd = 0")
