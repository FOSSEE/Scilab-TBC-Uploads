clc;funcprot(0);//EXAMPLE 3.11
// Initialisation of Variables
p1=1;...................//Initial pressure in bar
t1=343;..................//Initial temperature in K
p2=7;....................//Pressure after adiabatic compression
Qs=465;...............//Heat addition at constant volume in kJ/kg
cp=1;.....................//Specific heat at constant pressure in kJ/kg
cv=0.706;..................//Specific heat at constant volume in kJ/kg
ga=cp/cv;.................//Ratio of specific heats
//Calculations
r=(p2/p1)^(1/ga);...............//Compression ratio
t2=t1*(r^(ga-1));.....................//Temperature at the end of compression in K
t3=t2+(Qs/cv);.............//Temperature at the end of heat addition in K
disp(r,"Compression ratio:")
disp(t2,"Temperature at the end of compression in K")
disp(t3,"Temperature at the end of heat addition in K")
