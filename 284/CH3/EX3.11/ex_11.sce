// Chapter 3_The Semiconductor in Equilibrium
//Caption_Charge Neutrality
//Ex_11//page 115
T=300    //temperature in kelvin
Na=10^16   //donor concentration per cm cube
Nd=3*(10^15)
ni=1.5*(10^10)  //intrinsic carrier concentration
po=((Na-Nd)/2)+(((Na-Nd)/2)^2+ni^2)^0.5
no=ni^2/po;
printf('The minority carrier electron concentration is %fd per cm cube while the majority carrier hole concentration is %fd per cm cube',no,po)