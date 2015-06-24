clc,clear
printf('Example 6.35\n\n')

V_L=6600,I_L=110,phi_1=acos(0.9) //lagging
kW=[400,1000,400,300]*10^3
cosphi=[1,0.71,0.8,0.9]
tanphi=tan(acos(cosphi))
kVAR=kW.*tanphi

kW_total=kW(1)+kW(2)+kW(3)+kW(4)
kVAR_total=kVAR(1)+kVAR(2)+kVAR(3)+kVAR(4)

phi_c=atan(kVAR_total/kW_total)  //total power factor angle
load_1=sqrt(3)*V_L*I_L*cos(phi_1)

kW_1=load_1 //active component of machine 1
kVAR_1=kW_1*tan(phi_1) //reactive component of machine 1
kW_2=kW_total - kW_1 //active component of machine 1
kVAR_2=kVAR_total-kVAR_1 //reactive component of machine 2

phi_2=atan(kVAR_2/kW_2) 
pf_2=cos(phi_2) //power factor of machine 2

printf('Output of second alternator= %.2f kW',kW_2/1000)
printf('\nPower factor of machine 2 = %.4f and lagging',pf_2)
