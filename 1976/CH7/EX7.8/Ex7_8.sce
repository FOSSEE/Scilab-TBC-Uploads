
//To determine the weight of the locomotive
//Page 378
clc;
clear;
Wg=300; //Weight of the train to be hauled
RI=10/100; //Rotation inertia
Ma=20/100; //Co-Efficient of adhesion
Wa=20; //Permissible Weight of axle load
r=45;
G=2;
a=1;  //Acceleration
Wl=poly(0,'Wl'); //Variable  Weight of locmotive
W=Wg+Wl; //Total Weight of the train
We=W*(1+RI);
Ft=((277.8*a*We/W)+(98.1*G)+r)*W;

Fmax=(9.81*1000*Ma*Wl);

X=Ft-Fmax; //Polynomial Equation to find Wl

Wl=roots(X(2)); //Numerical Value of the Weight of the locomotive

NoA=Wl/Wa; //Number of axles

printf('The weight of the locomotive and the number of axles is %g tonnes and %g axles respectively\n',Wl,ceil(NoA))
