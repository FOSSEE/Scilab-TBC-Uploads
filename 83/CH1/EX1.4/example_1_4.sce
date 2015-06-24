//Chapter 1
//Example 1.2
//page 6
clear;clc;
md=20e3;
unit_1=14e3;
unit_2=10e3;
ener_1=1e8;
ener_2=7.5e6;
unit1_time=1;
unit2_time=0.45;

annual_lf_unit1=ener_1/(unit_1*24*365);
md_unit_2=md-unit_1;
annual_lf_unit2=ener_2/(md_unit_2*24*365);
lf_unit_2=ener_2/(md_unit_2*unit2_time*24*365);
unit1_cf=annual_lf_unit1;
unit1_puf=unit1_cf;
unit2_cf=ener_2/(unit_2*24*365);
unit2_puf=unit2_cf/unit2_time;
annual_lf=(ener_1+ener_2)/(md*24*365);


printf('Annual load factor for Unit 1 = %.2f %% \n\n',annual_lf_unit1*100);
printf('The maximum demand on Unit 2 is %d MW \n\n',md_unit_2/1000);
printf('Annual load factor for Unit 2 = %.2f %% \n\n',annual_lf_unit2*100);
printf('Load factor of Unit 2 for the time it takes the load= %.2f %% \n\n',lf_unit_2*100);
printf('Plant capacity factor of unit 1 = %.2f %% \n\n',unit1_cf*100);
printf('Plant use factor of unit 1 = %.2f %% \n\n',unit1_puf*100);
printf('Annual plant capacity factor of unit 2 = %.2f %% \n\n',unit2_cf*100);
printf('Plant use factor of unit 2 = %.2f %% \n\n',unit2_puf*100);
printf('The annual load factor of the total plant = %.2f %% \n\n',annual_lf*100);
