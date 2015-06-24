
// Variable Declaration
P = 5.0             //Power(MW)
pf = 0.8            //lagging power factor
d = 15.0            //Distance of line(km)
J = 4.0             //Current density(amp per mm^2)
r = 1.78*10**(-8)   //Resistivity(ohm-m)
kV_1 = 11.0         //Permissible voltage level(kV)
kV_2 = 22.0         //Permissible voltage level(kV)

// Calculation Section
I_1 = (P*10**3)/((3)**(0.5) * (kV_1) * pf)   //Load current(A)
area_1 = I_1/J                               //Cross-sectional area of the phase conductor(mm^2)
volume_1 = 3 * (area_1/10**6) * (d*10**3)    //Volume of conductors material(m^3)
R_1 = r * (d*10**3)/(area_1 * (10**-6))      //Resistance per phase(ohm)
PL_1 = 3 * (I_1**2) * (R_1*10**(-3))         //Power loss(kW)

I_2 = (P*10**3)/((3)**(0.5) * (kV_2) * pf)   //Load current(A)
area_2 = I_2/J                               //Cross-sectional area of the phase conductor(mm^2)
volume_2 = 3 * (area_2/10**6) * (d*10**3)    //Volume of conductors material(m^3)
R_2 = r * (d*10**3)/(area_2 * (10**-6))      //Resistance per phase(ohm)
PL_2 = 3 * (I_2**2) * (R_2*10**(-3))         //Power loss(kW)
area_ch = (area_1-area_2)/area_1*100         //Change in area of 22kV level from 11 kV level(%)
vol_ch = (volume_1-volume_2)/volume_1*100    //Change in volume of 22kV level from 11 kV level(%)
loss_ch = (PL_1-PL_2)/PL_1*100               //Change in losses of 22kV level from 11 kV level(%)

// Result Section
printf('For 11 kV level :')
printf('Cross-sectional area of the phase conductor = %d mm^2' ,area_1)
printf('Volume of conductors material = %.2f m^3' ,volume_1)
printf('Power loss = %.2f kW' ,PL_1)
printf('\nFor 22 kV level :')
printf('Cross-sectional area of the phase conductor = %d mm^2' ,area_2)
printf('Volume of conductors material = %.2f m^3' ,volume_2)
printf('Power loss = %.2f kW' ,PL_2)
printf('\nConductor size has decreased by %.f percent in 22 kV level' ,area_ch)
printf('Conductor volume has decreased by %.f percent in 22 kV level' ,vol_ch)
printf('Conductor losses has decreased by %.f percent in 22 kV level' ,loss_ch)
