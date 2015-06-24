//Ex3_16 Pg-191
clc

Vz=9 //breakdown voltage in V
per=0.1 //10% tolerance 
Tol=Vz*per
printf("Tolerance =%.1f V",Tol)
tol_high=Vz+Tol
tol_low=Vz-Tol //ranges in tolerance
printf("\n Range of breakdown voltage= %.1f to %.1f V",tol_low,tol_high)
// in the textbook the value 8.2 is wrong the correct value is 8.1
T1=25 //temperature T1 in degree celcius
T2=75 //temperature T2 in degree celcius
diff_temp=T2-T1 //chnage in temperature
Vzener=2*10^(-3) //zener voltage
fall_break_vol=Vzener*diff_temp //fall in breakdown voltage
new_break_vol=Vz-fall_break_vol //new break don voltage
printf("\n New break don voltage =%.1f V",new_break_vol)

range_high=tol_low-fall_break_vol
range_low=tol_high-fall_break_vol
printf("\n Range of breakdown voltage= %.1f to %.1f V",range_high,range_low)
