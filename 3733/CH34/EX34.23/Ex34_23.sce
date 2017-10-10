// Example 34_23
clc;funcprot(0);
//Given data
P=100;// MW
CC=10000;// Rs./kW
R=2;// Royalty in Rs./kW
C_e=0.3;//Rs./kWh
MD=70;// MW
F_l=0.6;// Annual load factor
S_a=10^7;// Salaries and maintainence in rupees

//Calculation
E=(MD*10^3)*F_l*8760;// kWh
CC=P*10^3*CC;// Capital cost of the plant in rupees

// Annual fixed charges
D=(15/100)*CC;// Depriciation in rupees
S=(20/100)*S_a;// Salaries and maintainence in rupees
Tfc=D+S;// Total fixed charges in rupees
C_kw=(Tfc/(MD*10^3));// Cost per kW 

// Annual fixed charges
S=(80/100)*S_a;// Salaries and maintainence in rupees
Tc=(S/E)+C_e;// Total cost in rupees
Tc=(Tc*100);// paise/kWh
printf('\nTwo part tariff=Rs.%0.0f/kW+%0.3f/kWh',C_kw,Tc/100);
