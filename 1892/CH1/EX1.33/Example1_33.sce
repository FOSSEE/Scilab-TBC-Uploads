// Example 1.33

clear; clc; close;

format('v',7);
// Given data
//Tst=100% of Tfl;//in %
//Tm=100% of Tfl;//in %
TstByTfl=100/100;//ratio
TmByTfl=200/100;//ratio

//Calculations
//Formula : T proportional to S*E2^2*R2/(R2^2+(S*X2)^2)
//Formula : TstByTm=2*Sm/(Sm^2+1)
TstByTm=TstByTfl/TmByTfl;//Calculating TstByTm
P=[TstByTm -2 TstByTm];//Polynomial for Sm
Sm=roots(P);
Sm=Sm(2);//Discarding value > 1
disp(Sm*100,"Slip at which max Torque occurs(in %) : ");
//Formula : 1/TstByTm=(Sm^2+Sfl^2)/(2*Sm*Sfl)
P=[TstByTm -2*Sm Sm^2*TstByTm];//Polynomial for Sfl
Sfl=roots(P);
Sfl=Sfl(2);//Discarding value >= 1
disp(Sfl*100,"Full load slip (in %) : ");
