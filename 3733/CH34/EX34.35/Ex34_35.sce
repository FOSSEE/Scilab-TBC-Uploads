// Example 34_35
clc;funcprot(0);
//Given data
P=30;// MW
Pc=10*10^7;// Plant cost in rupees
Ii=13/100;// Interest and insurance
D=5/100;// Depriciation
Mc=50*10^5;// Plant maintainence cost in rupees
Fc=700*10^5;// Fuel cost in rupees
Lc=25*10^5;// Lubricating cost in rupees
LC=75*10^5;// Labour cost in rupees
MD=25;// MW
F_l=0.75;// Load factor
p=5;// Profit expected in paise/kWh

//Calculation
L_a=(MD*F_l);// Average load in MW
E_g=L_a*10^3*24*365;// Energy generated/year in kWh
Iic=Ii*Pc;// Interest and insurance cost in rupees
D=D*Pc;// Depriciation in rupees
Pr=(p/100)*E_g;// Profit required in rupees
Tc=Iic+D+Mc+Fc+Lc+LC+Pr;// Total cost in rupees
Ce=(Tc*100)/(E_g);// Cost of energy generated in paise/kWh
printf('\nCost of energy generated=%0.1f paise/kWh',Ce);
