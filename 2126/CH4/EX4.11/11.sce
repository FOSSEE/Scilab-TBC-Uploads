clc
clear

//input data
To1=473 //Total stagnation temperature at inlet in K
To2=673 //Stagnation exit temperation in K
M1=0.5 //Mach number at entry

//calculation
t1=0.6914 //Stagnation temperature ratio at critical state from gas tables (Rayleigh,k=1.4,M1)
p1=1.7778 //Static pressure ratio at critical state from gas tables (Rayleigh,k=1.4,M1)
t2=(To2/To1)*t1 //Stagnation temperature ratio at exit 
M2=0.867 //Mach number at exit from gas tables (Rayleigh,t2,k=1.4)
p2=1.16 //Static pressure ratio at exit from gas tables (Rayleigh,k=1.4,M2)
p=p2/p1 //ratio of static pressures at oulet and inlet
PL=(1-p)*100 //pressure loss in %

//output
printf('(A)Mach number is %3.3f\n (B)Percentage drop in pressure is %3.1f percent',M2,PL) 
