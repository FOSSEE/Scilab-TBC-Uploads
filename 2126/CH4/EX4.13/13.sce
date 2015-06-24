clc
clear

//input data
To1=300 //Total stagnation temperature at inlet in K
To2=310 //Stagnation exit temperation in K
G=1300 //Mass velocity in kg/m^2-s
P1=105*10^3 //Static Pressure at entry in Pa
Cp=1.005 //Specific heat of dry air in kJ/kg-K
R=287 //Gas constant in J/kg-K

//calculation
T1=(((-2*P1^2*Cp)+sqrt(((-2*P1^2*Cp)^2)+(8*G^2*R^2*P1^2*Cp*To1)))/(2*G^2*R^2)) //Static temperature in K
t1=T1/To1 //Temperature ratio at entry
M1=1.4 //Mach number at entry from gas tables (isentropic,t1,k=1.4)
t2=0.934 //Stagnation temperature ratio at critical state from gas tables (Rayleigh,k=1.4,M1)
Tot=To1/t2 //Stagnation critical temperature in K
t3=To2/Tot //Stagnation temperature ratio at exit from gas tables (Rayleigh,k=1.4,M1)
M2=1.26 //Mach number at exit from gas tables (Rayleigh,t3,k=1.4)

//output 
printf('(A)The inlet mach number is %3.2f \n (B)The exit mach number is %3.2f',M1,M2)
