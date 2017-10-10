// Example 6_5
clc;funcprot(0);
// Given data
p_1=85.0;// psig
p_2=10.0;// psig
t=8.00;// hour
m=20.0;// gal

// Calculation
mv=20.0/8.00;// gal/h
mv=mv*0.13368*(1/3600);// ft^3/s
W_shaft=mv*(p_1-p_2)*144;// ft.lbf/s
W_shaft=W_shaft*(1/550);// hp
W_shaft=W_shaft*746;// W
W_shaft_ins=W_shaft*5*60*(1/2.50);// W
printf("\nThe hydraulic power produced,(W_shaft)_instantaneous=%3.0f W",W_shaft_ins);
