// Example 34_8
clc;funcprot(0);
//Given data
a=[5 4 2 1 0.5];// Load in kW
b=[200 4000 2000 1000 1560];// No of hours at load
CV_c=28000;// kJ/kg
Cc=350;// Cost of coal in Rs./ton
CV_d=36000;// kJ/kg
Cd=1200;// Cost of diesel oil in Rs./ton
Ci_s=18500;// Capital investment for  steam plant in Rs/kW
Ci_d=17000;// Capital investment for diesel plant in Rs/kW
Es=320000;// Extra annual salary for steam plant in rupees

// Calculation
Cce=(10^6*Cc)/(CV_c*1000);// The cost of coal energy per 10^6 kJ
Cde=(10^6*Cd)/(CV_d*1000);// The cost of diesel oil energy per 10^6 kJ
for (i=1:5)
    c(i)=a(i)*b(i);// MW-hrs
    d(i)=5*10^6*(1.5+(2*a(i))+(0.025*(a(i))^3));// Input rate in kJ per hour for steam plant
    e(i)=b(i)*d(i);// Total input in kJ
    f(i)=5*10^6*(2.25+a(i)+(0.12*(a(i))^2)-(0.004*(a(i))^3));// Input rate in kJ per hour for diesel plant
    g(i)=b(i)*f(i);// Total input in kJ
end
N=b(1)+b(2)+b(3)+b(4)+b(5);// Total no. of hours at load
MW_hrs=c(1)+c(2)+c(3)+c(4)+c(5);// Total MW-hrs
T_s=e(1)+e(2)+e(3)+e(4)+e(5);// Total input in kJ for steam plant
T_d=g(1)+g(2)+g(3)+g(4)+g(5);// Total input in kJ for diesel plant
Ahr_s=(T_s)/(MW_hrs*1000);// Average heat rate in kJ per kW hour (for steam plant)
Ahr_d=(T_d)/(MW_hrs*1000);// Average heat rate in kJ per kW hour (for diesel plant)
// Steam plant
Fc_s=a(1)*10^3*Ci_s*(12/100);// Fixed cost in Rs./year
Oc_s=((T_s/10^6)*Cce)+(Es);// Operating cost in Rs./year
Tc_s=Fc_s+Oc_s;// Total cost in rupees
// Diesel plant
Fc_d=a(1)*10^3*Ci_d*(12/100);// Fixed cost in Rs./year
Oc_d=((T_d/10^6)*Cde);// Operating cost in Rs./year
Tc_d=Fc_d+Oc_d;// Total cost in rupees
printf('\nTotal cost of steam plant=Rs.%0.4e \nTotal cost of diesel plant=Rs.%0.4e',Tc_s,Tc_d)
if(Tc_s<Tc_d)
    printf('\nThe steam plant would be the choice under the given circumstances despite the higher investment and the greater relative labour cost.');
else
    printf('\nThe diesel plant would be the choice under the given circumstances.');
end
// The answer provided in the textbook is wrong

