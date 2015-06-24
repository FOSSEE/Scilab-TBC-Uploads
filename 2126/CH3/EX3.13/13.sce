clc
clear

//input data
Po1=200 //Stagantion pressure at inlet in kPa
To1=303 //Stagnation temperature at inlet in K
M1=0.2 //Inlet Mach number from diagram
D=0.025 //inner tude diameter in m(missing data)
M2=0.8 //Outlet Mach number 
f=0.005/4 //frictional factor
R=287 //Gas constant in J/kg-K

//calculation
t1=0.992 //Static to Stagnation temperature ratio at entry from gas tables (M1,k=1.4,isentropic)
T1=To1*t1 //Static temperature in K
p1=0.973 //Static to Stagnation pressure ratio at entry from gas tables (M1,k=1.4,isentropic)
P1=Po1*p1 //Static pressure in kPa
p2=2.964 //Stagnation pressure ratio at inlet to critical state from gas tables (M1,k=1.4,fanno flow)
Pot=Po1/p2 //Stagnation pressure at critical state in kPa
X1=14.533 //frictional constant fanno parameter from gas tables,fanno flow tables @M1,k=1.4
p3=1.038 //Stagnation pressure ratio at outlet to critical state from gas tables (M1,k=1.4,fanno flow)
Po2=Pot*p3 //Stagnation pressure at exit in kPa
X2=0.073 //frictional constant fanno parameter from gas tables,fanno flow tables @M2,k=1.4
X3=X1-X2 //overall frictional constant fanno parameter
L1=(X3*D)/(4*f) //Length of the pipe in m
SPL=(1-(p3/p2))*100 //Percentage decrease in stagnation pressure in percent
ds=R*log(Po1/Po2) //Change of entropy in kJ/kg-K

//output
printf('(A)Length of the pipe is %3.1f m\n (B)Percentage decrease in stagnation pressure is %3.2f percent\n (C)Change of entropy is %3.3f kJ/kg-K',L1,SPL,ds)
