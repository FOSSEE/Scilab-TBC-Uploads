// Example 32_15
clc;funcprot(0);
//Given data
MD_1=15;// Maximum demand in MW
MD_2=25;// Maximum demand in MW
MD_3=50;// Maximum demand in MW
F_di1=1.25;// Diversity factor
F_di2=1.20;// Diversity factor
F_di3=1.30;// Diversity factor
F_d1=0.70;// Demand factor
F_d2=0.90;// Demand factor
F_d3=0.98;// Demand factor
F_dio=1.5;// Diversity factor

// Calculation
//(a)
MD_s=MD_1+MD_2+MD_3;// The sum of maximum demands from all customers in MW
MD=MD_s/F_dio;// Maximum demand of the plant in MW
//(b)
Mdl=MD_1*F_di1;// Maximum domestic load demand in MW
Cdl=Mdl/F_d1;// Connected domestic load in MW
Ccl=(MD_2*F_di2)/F_d2;// Connected commercial load in MW
Cil=(MD_3*F_di3)/F_d3;// Connected industrial load in MW
Tcl=Cdl+Ccl+Cil;// Total connected load to the plant in MW
printf('\n(a)Maximum demand of the plant=%0.0f MW \n(b)Connected commercial load=%0.2f MW \n   Connected industrial load=%0.2f MW \n   Connected industrial load=%0.2f MW \n   Total connected load to the plant=%0.2f MW',MD,Cdl,Ccl,Cil,Tcl);
// The answer vary due to round off error
