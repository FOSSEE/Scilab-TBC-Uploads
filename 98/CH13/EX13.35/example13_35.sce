//Chapter 13
//Example 13_35
//Page 350

clear;clc;

v=500;
ip=800;
in=550;
io=1500;
ra=0.2;
//no load current
inl=5;

tip=io+ip;
tin=io+in;
cn=ip-in;
printf("Total current on positive side = %d A \n", tip);
printf("Total current on negative side = %d A \n", tin);
printf("Current in nuetral wire = %d A \n\n", cn);

e=v/2-ra*5;
printf("(i)BAck emf = %d V \n", e);
ib=130;
ia=120;
printf("Ib = %d A \n", ib);
printf("Ia = %d A \n\n", ia);

va=199+ra*ib;
vb=249+ra*ib;
printf("(ii) Voltage across machine A = %d V \n", va);
printf("     Voltage across machine B = %d V \n\n", vb);
l=tip-ia;
printf("(iii) Load on main generator = %d A \n", l);




