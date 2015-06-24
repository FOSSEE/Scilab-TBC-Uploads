clear;
clc;
printf("\t\t\tExample Number 2.11\n\n\n");
// influence of contact conductance on heat transfer
// illustration2.11
// solution

d = 0.03;//[m] diameter of steel bar
l = 0.1;//[m] length of steel bar
A = (%pi*d^(2))/4;// [square meter] crossectional area of bar 
k = 16.3;// [W/square meter per degree celsius] thermal conductivity of tube 
hc = 1893.93;// [W/square meter per degree celsius] contact coefficient
// the overall heat flow is subjected to three thermal resistances 
// one conduction resistance for each bar
// contact resistance 
Rth = l/(k*A);// [degree celsius /W]
// from table(2-2) the contact resistance is 
Rc = 1/(hc*A);// [degree celsius /W]
Rt = 2*Rth+Rc;// [degree celsius /W] total resistance
dt = 100;// [degree celsius] temperature difference
q = dt/Rt;// [W] overall heat flow
printf("overall heat flow is %f W",q);
// temperature drop across the contact is found by taking the ratio 
// of the contact resistance to the total thermal resistance 
dt_c = (Rc/(2*Rth))*dt;// [degree celsius]
printf("\nthe temperature drop across the contact is %f degree celsius",dt_c);

