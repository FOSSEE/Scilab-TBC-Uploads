clc
clear

//input data
t1=3 //Stagnation temperature ratio
M2=0.8 //Mach number at exit

//calculation
t2=0.964 //Ratio of stagnation temperature at exit and critical state (Rayleigh,M2,k=1.4) 
p1=1.266 //Static Pressure ratio  at exit from gas tables (Rayleigh,M2,k=1.4)
t3=t2/t1 //Stagnation temperature ratio at critical state 
M1=0.29 //Mach number at entry from gas tables (Rayleigh,t3,k=1.4)
p2=2.147 //Static pressure ratio at critical state from gas tables (Rayleigh,k=1.4,M1)
p=p1/p2 //ratio of static pressures at exit and entry
PL=(1-p)*100 //Percentage loss in static pressure in %

//output
printf('(A)Mach number at entry is %3.2f\n (B)Percentage loss in static pressure is %3i percent',M1,PL)
