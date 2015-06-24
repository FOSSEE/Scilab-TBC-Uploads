// Chapter 3_The Semiconductor in Equilibrium
//Caption_Charge Neutrality
//Ex_9//page 112
T=300    //temperature in kelvin
Nd=10^16   //donor concentration per cm cube
Na=0
ni=1.5*(10^10)  //intrinsic carrier concentration
no=((Nd-Na)/2)+(((Nd-Na)/2)^2+ni^2)^0.5
po=ni^2/no;
printf('The majority carrier electron concentration is %fd per cm cube while the minority carrier hole concentration is %fd per cm cube',no,po)