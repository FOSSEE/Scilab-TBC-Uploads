clear;
clc;
printf("\t\t\tExample Number 9.2\n\n\n");
// condensation on tube tank
// Example 9.2(page no.-493)
// solution

// the condensate properties are obtained from previous example
// replacing L by n*d
Tw=98;// [degree celsius]
RHOf=960;// [kg/cubic meter] 
MUf=2.82*10^(-4);// [kg/m s]
Kf=0.68;// [W/m degree celsius]
g=9.81;// [m/s^(2)]
Tsat=100;// [degree celsius]
Tg=100;// [degree celsius]
Hfg=2255*10^(3);// [J/kg]
d=0.0127;// [m]
n=10;
hbar=0.725*((RHOf^(2)*g*Hfg*Kf^(3)/(n*d*MUf*(Tg-Tw)))^(0.25));// [W/square meter degree celsius]
// total surface area is 
n=100;
Al=n*22*d/7;// [square meter]
printf("total surface area is %f square meter/m",Al);
// so the heat transfer is 
Ql=hbar*Al*(Tg-Tw);// [W]
printf("\n\n heat transfer is %f kW/m",Ql/1000);
// total mass flow of condensate is then 
mdotl=Ql/Hfg;// [kg/h]
mdotl=mdotl*3600;// [kg/h]
printf("\n\n total mass flow of condensate is %f kg/h",mdotl);
