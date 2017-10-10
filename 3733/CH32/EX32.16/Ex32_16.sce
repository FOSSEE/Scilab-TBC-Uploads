// Example 32_16
clc;funcprot(0);
//Given data
MD=500;// Maximum demand in MW
F_l=0.5;// Load factor
F_c=0.4;// Capacity factor

// Calculation
E=MD*F_l*8760;// Energy generated per year in MWh
Pc=E/(F_c*8760);// Plant capacity in MW
Rc=Pc-MD;// Reserve capacity of the plant in MW
printf('\nReserve capacity of the plant=%0.0f MW',Rc);
