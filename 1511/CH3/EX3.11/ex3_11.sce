// Example 3.11 page no-172
clear
clc


//(a)
vdc=30  //V
idc=0.05  //A
rl=vdc/idc
f=50     ///Hz
c=80*10^-6  //F
vm=vdc+(idc/(4*f*c))
printf("\n(a)\nRL=%.0f Ohm\nVm=%.3fV\nVrms=%.1fV",rl,vm,vm/sqrt(2))
//(b)
is=vm*2*%pi*f*c
printf("\n\n(b)\nI_diode swing/I_diode mean = %.2f",is/idc)
//(c)
gam=4*sqrt(3)*f*c*rl
gam=1/gam
printf("\n\n(c)\ngamma=%.2f",gam)
