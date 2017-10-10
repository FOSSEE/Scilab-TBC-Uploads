// Example 34_14
clc;funcprot(0);
//Given data
MD=80;// MW
F_l=40/100;// Load factor
E=120*10^6;// kW-hr
MO=30;// Maximum output in MW
CC_ss=18000;// Capital cost of steam station in Rs./kW of installed capacity
CC_psp=12000;// Capital cost of pump storage plant in Rs./kW of installed capacity
Oc_s=0.80;// Operating cost of steam plant in Rs./kW-hr
Oc_psp=0.05;// Operating cost of pump storage plant in Rs./kW-hr
ID_s=12/100;// Interest and depriciation 

// Calculation
//(a)
CC_s=MD*1000*CC_ss;// Capital cost of steam station in rupees
ID=ID_s*CC_s;// Interest and depriciation in rupees
L_a=MD*1000*F_l;// Average load in kW
E_s=L_a*8760;// Energy supplied per year in kW-hrs
IDc=(ID/E_s)*100;// Interest and depriciation charges per unit of energy in paise/kWh
Tc_a=(Oc_s*100)+IDc;// Total cost per unit in paise/unit
Tc_a=Tc_a/100;// Rs./kWh
//(b)
L=MD-MO;// The load supplied by the steam plant in MW
CC_s=L*1000*CC_ss;// Capital cost of steam plant in rupees
CC_psp=CC_psp*MO*1000;// Capital cost of pump storage plant in rupees
Tc_cs=CC_s+CC_psp;// Total capital costof combined station in rupees
IDc=ID_s*Tc_cs;// Interest and depriciation charges on capital investment in rupees
Oc_psp=(Oc_psp*E);// Operating cost of pump storage plant in rupees
e_s=E_s-E;// The energy units supplied by steam station in kW-hr
Oc_s=Oc_s*e_s;// Operating cost of steam station in rupees
Tcpy=IDc+Oc_psp+Oc_s;// Total cost per year in rupees
Tc_b=Tcpy/E_s;// The cost per unit in  Rs./kWh
printf('\n(a)Total cost per unit=Rs.%0.3f/kWh \n(b)Total cost per unit=Rs.%0.2f/kWh',Tc_a,Tc_b);
