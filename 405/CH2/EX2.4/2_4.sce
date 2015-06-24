clear;
clc;
printf("\t\t\tExample Number 2.4\n\n\n");
// overall heat transfer coefficient for a tube 
// illustration2.3
// solution

ID = 0.025;// [m] inner diameter of steel
OD = ID+2*0.0008;//[m] outer diameter of steel
hi = 3500;// [W/square meter per degree celsius] convectional heat transfer coefficient of inside
ho = 7.6;// [W/square meter per degree celsius] convectional heat transfer coefficient of outside 
L = 1.0;// [m] tube length
Ai = %pi*ID*L;// [square meter] inside crossectional area 
Ao = %pi*OD*L;// [square meter] outside crossectional area 
k = 16;// [W/square meter per degree celsius] thermal conductivity of tube
Ri = 1/(hi*Ai);// [degree celsius /W] convection resistance inside tube
Rt = log(OD/ID)/(2*3.14*k*L);// [degree celsius /W] thermal resistance 
Ro = 1/(ho*Ao);// [degree celsius /W] convection resistance outside tube
R_total = Ri+Rt+Ro;// [degree celsius /W] total thermal and convection  resistance 
Uo = 1/(Ao*R_total);// [W/square meter degree celsius] overall heat transfer coefficient
printf("overall heat transfer coefficient is %f W/square meter degree celsius",Uo);
Tw = 50;// [degree celsius] water temperature
Ta = 20;// [degree celsius] surrounding air temperature
dt = Tw-Ta;// [degree celsius] temperature difference
q = Uo*Ao*dt;// [W] heat transfer 
printf("\n heat loss per unit length is %f W(for 1m length)",q);