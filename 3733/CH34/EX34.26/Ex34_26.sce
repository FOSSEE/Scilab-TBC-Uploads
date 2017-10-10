// Example 34_26
clc;funcprot(0);
//Given data
P=5000;// kW
MD_d=3000;// kW
F_ld=20/100;// Load factor
MD_s=1800;// kW
F_ls=50/100;// Load factor
MD_st=200;// kW
F_lst=30/100;// Load factor
CC=18000;// Rs./kW
Trc=6.2*10^6;//Total running cost in Rs./year
ID=10/100;// Annual rate of depriciation and interest in capital 

//Calculation
E_s=((MD_d*F_ld)+(MD_s*F_ls)+(MD_st*F_lst))*8760;// The energy supplied per year to all three consumers in kW-hrs
Oc=Trc/E_s;// Operating charges per kW-hr in rupees
CC=P*CC;// Capital cost of the plant in rupees
Fcpy=CC*ID;// Fixed cost per year in rupees
Fc=Fcpy/P;// Fixed cost per kW in rupees
//(a)
Tc_d=(MD_d*Fc)+((MD_d*F_ld)*8760*Oc);// The total charges in rupees
Oac_d=Tc_d/((MD_d*F_ld)*8760);// Over all cost per unit in rupees
//(b)
Tc_s=(MD_s*Fc)+((MD_s*F_ls)*8760*Oc);// The total charges in rupees
Oac_s=Tc_s/((MD_s*F_ls)*8760);// Over all cost per unit in rupees
//(c)
Tc_st=(MD_st*Fc)+((MD_st*F_lst)*8760*Oc);// The total charges in rupees
Oac_st=((Tc_st)/((MD_st*F_lst)*8760));// Over all cost per unit in rupees
printf('\n(a)Over all cost per unit=Rs.%0.2f/kW-hr \n(b)Over all cost per unit=Rs.%0.3f/kW-hr \n(c)Over all cost per unit=Rs.%0.2f/kW-hr',Oac_d,Oac_s,Oac_st);
// The answer provided in the textbook is wrong
