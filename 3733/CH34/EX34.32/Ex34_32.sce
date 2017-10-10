// Example 34_32
clc;funcprot(0);
//Given data
P=200;// MW
Fc=24*10^6;// Fixed cost Rs./year
Cf=1800;// Cost of fuel in Rs./ton
CV=20000;// Calorific value in kJ/kg
Oe=280;// Other expanses in Rs./kW
Q_1=18000;// Plant heat rate at 100% capacity factor in kJ/kWh
F_c1=100/100;// Capacity factor
Q_2=10500;// Plant heat rate at 50% capacity factor in kJ/kWh
F_c2=50/100;// Capacity factor

//Calculation
Fc=Oe+(Fc/(P*10^3));// Fixed cost per kW capacity  per year in Rs./kW

//(a)At 100% C.F
AD=P*10^3*F_c1;// The average demand in kW
E_g=AD*8760;// Energy generated per year in kWh
Fc_1=((Fc*AD)/(E_g))*100;// Fixed cost per kWh in paise
C=Q_1/CV;// Coal burned per kWh in kg
Cc=(C*Cf)/1000;// Cost of coal per kWh energy generated in rupees
Tc_1=(Fc_1/100)+Cc;// Total cost of generation per kWh in rupees

//(b)At 50% C.F
AD=P*10^3*F_c2;// The average demand in kW
E_g=AD*8760;// Energy generated per year in kWh
Fc_2=((Fc*AD)/(E_g))*100;// Fixed cost per kWh in paise
C=Q_2/CV;// Coal burned per kWh in kg
Cc=(C*Cf)/1000;// Cost of coal per kWh energy generated in rupees
Tc_2=(Fc_2/100)+Cc;// Total cost of generation per kWh in rupees
printf('\n(a)Total cost of generation per kWh=Rs.%0.3f \n(b)Total cost of generation per kWh=Rs.%0.3f',Tc_1,Tc_2);
// The answer provided in the textbook is wrong
