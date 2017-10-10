clc;
p1=1; // pressure at inlet in bar
T1=27+273; // Temperature at inlet in kelvin
T4=1200; // Maximum temperature in kelvin
t=T4/T1; // Temperature ratio
r=1.4; // Specific heat ratio

rp=t;
c=rp^((r-1)/r);
x=(1-sqrt(c)/rp)/(1-c/rp);
eff2_1=x;
r1=sqrt(rp);
r2=r1; r3=r1; r4=r1;

disp (eff2_1,"Efficiency ratio of power plants = ");
disp (r4,"pressure ratio of LPT = ",r3,"pressure ratio of HPT = ",r2,"pressure ratio of HPC = ",r1,"pressure ratio of LPC = ");
