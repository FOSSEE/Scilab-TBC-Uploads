clear;
clc;

// Illustration 9.4
// Page: 365

printf('Illustration 9.4 - Page: 365\n\n');

// solution

//****Data****//
// Basis:
F = 100;// [mol feed]
zF = 0.5;
D = 60;// [mol]
W = 40;// [mol]
//*******//

// From Illustration 9.1, Equilibrium data:
Data = [1 1;0.655 0.810;0.487 0.674;0.312 0.492;0.1571 0.279;0 0];
Feed = [0 0;1 1];
// The operating line is drawn with a slope -(W/D) to cut the equilibrium line.
deff('[y] = f44(x)','y = -((W/D)*(x-zF))+zF');
x = 0.2:0.1:0.6;
scf(16);
plot(Data(:,1),Data(:,2),Feed(:,1),Feed(:,2),x,f44);
xgrid();
xlabel("Mole fraction of heptane in liquid");
ylabel("Mole fraction of heptane in vapour");
legend("Equilibrium Line","Feed Line","Operating Line");
// The point at which the operating line cuts the equilibrium line has the following composition* temparature:
yd = 0.575;// [mole fraction heptane in vapour phase]
xW = 0.387;// [mole fraction heptane in liquid phase]
Temp = 113;// [OC]
printf("mole fraction of heptane in vapour phase %f \n",yd);
printf("mole fraction of heptane in liquid phase %f\n",xW);
printf("Temparature is %d OC\n",Temp);