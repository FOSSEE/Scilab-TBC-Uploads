clc;
warning('off');
printf("\n\n example2.1 - pg28");
// given
deltax=0.1;  //[m] - thickness of copper block
T2=100;  //[degC] - temp on one side of copper block
T1=0;  //[degC] - temp on other side of the copper block
k=380;  //[W/mK] - thermal conductivity
// using the formula (q/A)*deltax=-k*(T2-T1)
g=-k*(T2-T1)/deltax;
g1=(g/(4.184*10000));
printf("\n\n The steady state heat flux across the copper block is\n q/A=%fW/m^2 \n or in alternate units is \n q/A=%fcal/cm*sec",g,g1);
