//Section-1,Example-5,Page no.-AC.442
//To find the minimum volume fraction of carbon fibres needed.
clc;
E_m=3.5
e_f=0.01
Q_fu=700
V=1.5                      //V=V_m/V_f=1.5
V1=V+1
V_f=1/2.5
V_m=(1-V_f)
Q_m=E_m*e_f
Q_cu=((Q_fu*V_f)+((Q_m*10^3)*(1-V_f)))
disp (Q_cu,'the ultimate strength of the composite(MPa)')
//Q_m=E_c*e_f=(E_f*V_f(glass)+E_m*V_m(epoxy))*(Q_f/E_f(carbon-fiber))
Q_m=((((70*10^9)*0.4)+((3.5*10^9)*0.6))*((700*10^6)/(350*10^9)))*10^-6
 disp(Q_m,'stress of matrix(MPa)')
V_crit=((Q_cu-Q_m)/(Q_fu-Q_m))
disp(V_crit,'V_minimum')
