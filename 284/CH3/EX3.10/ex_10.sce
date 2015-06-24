// Chapter 3_The Semiconductor in Equilibrium
//Caption_Charge Neutrality
//Ex_10//page 114
T=300    //temperature in kelvin
Nd=5*(10^13)
Na=0
ni=2.4*(10^13)
no=((Nd-Na)/2)+(((Nd-Na)/2)^2+ni^2)^0.5
po=ni^2/no;
printf('The majority carrier electron concentration is %fd per cm cube while the minority carrier hole concentration is %fd per cm cube',no,po)