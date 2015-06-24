clc
clear

//Input data
a1=1/3 //Ratio of throat area to exit area 
p1=0.4 //Ratio of static pressure to Stagnation pressure at inlet

//Calculation
a2=1/a1 //reciprocal of a1 to find in gas tables
//we know Pox=Po1=Po, Poy=Po2, At=Atx and Aty=At2
a2p2=a2*p1 //Area pressure ratio i.e. (A2*P2)/(At2*Po2)
M2=0.472 //Exit mach number from gas tables @a2p2
a3=1.397 //Ratio of exit area to throat area after shock from gas tables @a2p2 
p2=0.858 //Static to stagnation pressure ratio at exit from gas tables @a2p2
p3=a3/a2 //Stagnation pressure ratio after and before shock 
Mx=2.58 //Mach number before the shock @p3
My=0.506 //Mach number after the shock from gas tables @Mx
p4=9.145 //Stagnation pressure after shock to Static pressure before shock from gas tables @My
a4=2.842 //Ratio of area before shock to throat area 
p5=0.051 //Ratio of Pressure before shock to Stagnation pressure at entry

//Output 
printf('At section where shock occurs:\n    (A)Mach number Mx=%3.2f and My=%3.3f\n    (B)Static Pressure is %3.3f*Po1 (units depend on Po1)\n    (C)Area of cross section is %3.3f*At (units depend on At)',Mx,My,p5,a4)
