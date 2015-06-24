clc,clear
printf('Example 6.27\n\n')

kW=[800,500,1000,600]
cosphi=[1,0.9,0.8,0.9]
tanphi=tan(acos(cosphi))
kVAR=kW.*tanphi

kW_total=kW(1)+kW(2)+kW(3)+kW(4)
kVAR_total=kVAR(1)+kVAR(2)+kVAR(3)+-1*kVAR(4) //4th case is leading 

phi_c=atan(kVAR_total/kW_total)  //total power factor angle
phi_1=acos(0.95)//pf of machine 1
kW_1=1000 //active component of machine 1
kVAR_1=kW_1*tan(phi_1) //reactive component of machine 1
kW_2=kW_total - kW_1 //active component of machine 1
kVAR_2=kVAR_total-kVAR_1 //reactive component of machine 2

phi_2=atan(kVAR_2/kW_2) 
pf_2=cos(phi_2) //power factor of machine 2

printf('Output of second alternator= %.0f kW',kW_2)
printf('\npower factor of machine 2 = %.2f and lagging',pf_2)
