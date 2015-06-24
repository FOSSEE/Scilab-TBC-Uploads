

//example 4.15
//calculate average evaporation loss from reservior
//total depth and volume of evaporation loss
clc;funcprot(0);
//given
Rh=0.4;         //relative humidity
A=4.8;          //average surface spread of reservior
v3=18;          //wind velocity at 3m above ground
es=31.81;       //saturated vapour pressure
Km=0.36;        //for large deep waters

//using Meyer's formula
ea=es*Rh;
v9=v3*(9/3)^(1/7);
E=Km*(es-ea)*(1+v9/16);
d=7*E;
v=d*A*100/1000;
E=round(E*10)/10;
d=round(d*10)/10;
v=round(v*100)/100;
mprintf("using Meyers formula:");
mprintf("\naverage evaporation loss from reservior=%f mm/day.",E);
mprintf("\ntotal depth=%f mm",d);
mprintf("\ntotal volume=%f hectare-m.",v);

//using Rohwer's formula
Pa=760;
vdash=(0.6/2)^(1/7)*18;
E=0.771*(1.465-0.000732*Pa)*(0.44+0.0733*vdash)*(es-ea);
d=7*E;
v=d*A*100/1000;
E=round(E*10)/10;
d=round(d*10)/10;
v=round(v*10)/10;
mprintf("\n\nusing Rohwers formula:");
mprintf("\naverage evaporation loss from reservior=%f mm/day.",E);
mprintf("\ntotal depth=%f mm",d);
mprintf("\ntotal volume=%f hectare-m.",v);
