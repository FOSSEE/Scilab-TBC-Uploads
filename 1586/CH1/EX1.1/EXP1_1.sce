clc;funcprot(0);//EXAMPLE 1.1
// Initialisation of Variables
wf=30;.............//Weight of the bicycle frame made of steel in lb
rho1=7.8;...........//Density of steel in g/cm^3
rho2=2.7;..........//Density of Aluminum in g/cm^3
rho3=4.5;...........//Density of Titanium in g/cm^3
rho4=1.8;..........//Density of Carbon fiber in g/cm^3
//CALCULATIONS
vf=(wf*454)/rho1;..........//Volume of frame in cm^3
wa1=(vf*rho2)/454;.........//Weight of Aluminum in lbs
wa2=(rho2/rho1)*wf;.......//Weight of Aluminum alloy in lb
wt=(rho3/rho1)*wf;........//Weight of Titanium in lb
wc=(rho4/rho1)*wf;........//Weight of Carbon fiber in lb
disp(round(vf),"Volume of frame in cm^3:")
disp(wa1,"Weight of Aluminum in lbs:")
disp(wa2,"Weight of Aluminum alloy in lbs:")
disp(wt,"Weight of Titanium in lbs:")
disp(wc,"Weight of Carbon fiber in lbs:")
printf("As can be seen, substantial reduction in weight is possible using materials other than steel.")
