// Calculating the hysteresis loss
clc;
disp('Example 3.13, Page No. = 3.35')
// Given Data
Bm = 1.0;// Maximum flux density in Wb per meter square
f = 50;// Frequency in Hz
SGi = 7.5;// Specific gravity of iron
ph = 4.9;// Hysterseis loss in W per Kg
// Calculation of co-efficient 'n'
Di = 7500;// Density of iron
n = ph/(Di*f*(Bm^(1.7)));//
disp(n,'(a)    co-efficient (n)=');
//in book answer is 1307*10^(-6).  The answers vary due to round off error
// Calculation of hysteresis loss
Bm = 1.8;// Maximum flux density in Wb per meter square
f = 25;// Frequency in Hz
ph = n*f*Di*Bm^(1.7);// Hysterseis loss in W per Kg
disp(ph,'(b)    Hysterseis loss(W per Kg)=');
//in book answer is 6.66 W per Kg.  The answers vary due to round off error
