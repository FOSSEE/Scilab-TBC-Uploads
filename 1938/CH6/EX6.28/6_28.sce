clc,clear
printf('Example 6.28\n\n')

kW=[250,300,150]
cosphi=[0.9,0.75,0.8] //all lagging
tanphi=tan(acos(cosphi))
kVAR=kW.*tanphi

kW_total=kW(1)+kW(2)+kW(3)
kVAR_total=kVAR(1)+kVAR(2)+kVAR(3) 

phi_1=acos(0.8)//pf of machine 1
kW_1=100 //active component of machine 1
kVAR_1=kW_1*tan(phi_1) //reactive component of machine 1
kW_2=kW_total - kW_1 //active component of machine 1
kVAR_2=kVAR_total-kVAR_1 //reactive component of machine 2
phi_2=atan(kVAR_2/kW_2) 
pf_2=cos(phi_2) //power factor of machine 2

printf('Output of second alternator= %.0f kW',kW_2)
printf('\npower factor of machine 2 = %.4f and lagging',pf_2)
