printf("\t example 2.3 \n");
printf("\t approximate values are mentioned in the book \n");
Lair=0.25/12; // thickness of air film,ft
Kair=0.0265; // thermal conductivity of air at 572F,Btu/(hr)*(ft^2)(F/ft)
A=1; // surface area,ft^2
Rair=Lair/(Kair*(A)); // resistance offered by air film, (hr)(F)/Btu
printf("\t resistance offered by air film %.2f (hr)(F)/Btu \n",Rair);
R=4.45; // resistance from previous example 2.2,(hr)(F)/Btu
Rt=(R)+Rair; // total resistance,(hr)(F)/Btu
printf("\t total resistance %.2f (hr)(F)/Btu \n",Rt);
Ta=1600; // temperature of inner wall,F
Tb=125; // temperature of outer wall,F
Q=(1600-125)/Rt; // heat loss, Btu/hr
printf("\t heat loss %.2f Btu/hr \n",Q);
printf("\t It is seen that in a wall 18 in. thick a stagnant air gap only .25 in. thick reduces the heat loss by 15 percent \n");
//end
