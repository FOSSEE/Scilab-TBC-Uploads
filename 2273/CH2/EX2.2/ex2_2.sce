//Calculate the most economical current density
clear;
clc;
//soltion
//given
id=0.1;//interest & depreciation charges
d=1.78*10^-8;//ohm m//resistivity
R=(d*1000)/10^-4;//ohm//resistance of conductor
cst=.50;//rs// cost of energy per unit
t=(365*24);//time of energy loss
lf=.7;//load factor of losses
printf("Annual cost of cable is Rs(2800a+1300)per km\n\n");
printf("Resistance of each conductor= %f/a \n", R);
P3=(R*t*cst*lf)/1000;//*I^2//kWh//annual cost of energy loss
printf("Annual cost of energy loss= P3/a= (%f*I^2)/a \n", P3);
P2=2800*id;//energy lost per annum
printf("Annual charge on account of intrest and depreciation on variable cost of line= P2*a= %d*a\n", P2);
J=sqrt(P2/P3);//current density I/a
printf("Economic current density of conductor is %f A/cm square",J);
