// Example 34_22
clc;funcprot(0);
//Given data
N=50000;// Number of domestic customers
Fc=2.5*10^7;// Fixed charges in rupees
Ec=2*10^7;// Energy charges in rupees
Cc=0.5*10^7;// Customer charges in rupees
p=20*10^5;// Profit in rupees
MD=5000;// kW
F_d=4;// Diversity factor
F_l=0.3;// Load factor

//Calculation
FC=Fc+((25/100)*p);// Fixed cost in rupees
EC=Ec+((50/100)*p);// Energy cost in rupees
CC=Cc+((25/100)*p);// Customer charges in rupees
MD_i=MD*F_d;// kW
E=MD*F_l*8760;// kW-hrs
Fc_kW=FC/(MD_i);// Fixed cost per kW per year in Rs./kW
C=CC/N;// Changes per customer per year in rupees
Er=EC/E;// Energy rate in Rs./kWh
printf('\nFixed cost per kW per year=Rs.%0.0f/kW \nEnergy rate=Rs.%0.1f/kWh \nThree charge rate=Rs.%0.0f+%0.0f kW+%0.1f/kWh',Fc_kW,Er,C,Fc_kW,Er);
// The answer provided in the textbook is wrong
