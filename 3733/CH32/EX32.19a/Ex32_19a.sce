// Example 32_19a
clc;funcprot(0);
//Given data
L_min=1;// MW
L_max=sqrt(3);// MW
P=2;// Plant capacity in MW
N=26;// Number of working days per month
h=8;// Number of working hours per day
c=50;// Charges in Rs./kW
c_d=2.5;//  Charges in Rs./kW-hr

// Calculation
x_0=4;
x_1=12;// Limits of integration
L_av=(1/8)*integrate('(((1/2)*sqrt(x)))','x',x_0,x_1)*1000;// Average load on the plant in kW
F_l=L_av/(L_max*1000);// Load factor
CF=L_max/P;// Capacity factor
E=L_av*N*h;// Energy consumption per month in kWhr
Ec=(L_max*1000*c)+(E*c_d);// Electrical charges to be paid by the factory
printf('\nLoad factor=%0.3f \nCapacity factor=%0.3f \nEnergy consumption per month=%0.0f kWhr \nElectrical charges to be paid by the factory=Rs.%0.0f',F_l,CF,E,Ec);
// The answer provided in the textbook is wrong
