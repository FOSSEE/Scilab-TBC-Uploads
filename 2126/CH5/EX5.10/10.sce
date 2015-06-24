clc
clear

//Input data
a1=0.4 //Ratio of throat area to exit area 
p1=0.8 //Ratio of static pressure to Stagnation pressure at inlet
At=1 //Throat area in m^2

//Calculation
a2=1/a1 //reciprocal of a1 to find in gas tables
//Pox=Po1=Po, Poy=Po2
a2p2=a2*p1 //Area pressure ratio i.e. (A2*P2)/(At2*Po2)
M2=0.28 //Exit mach number from gas tables @a2p2
a3=2.166 //Ratio of exit area to throat area after shock from gas tables @a2p2 
p2=0.947 //Static to stagnation pressure ratio at exit from gas tables @a2p2
p3=a2/a3 //Stagnation pressure ratio after and before shock 
Mx=1.675 //Mach number before the shock @p3
My=0.647 //Mach number after the shock from gas tables @Mx
a4=1.14 //Ratio of area after shock to throat area after shock from isentropic gas tables @My
a5=1.315 //Ratio of area before shock to throat area before shock from isentropic gas tables @My
Ax=a5*At //Area at shock in m^2

//Output 
printf('(A)Mach number across the shock: Mx=%3.3f (My=%3.3f)\n (B)Area at shock is %3.3f m^2',Mx,My,Ax)
