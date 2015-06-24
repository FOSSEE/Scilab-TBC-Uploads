clear;
clc;

// Illustration 9.2
// Page: 354

printf('Illustration 9.2 - Page: 354\n\n');

// solution

//****Data****//
// a:water b:ethylaniline
Pt = 760; // [mm Hg]
ma1 = 50;// [g]
mb1 = 50;// [g]
//*******//

// Data =  [Temp Pa(mm Hg) Pb(mm Hg)]
Data = [38.5 51.1 1;64.4 199.7 5;80.6 363.9 10;96.0 657.6 20;99.15 737.2 22.8;113.2 1225 40];
Ma = 18.02;// [kg/kmol]
Mb = 121.1;// [kg/kmol]

for i = 1:6
    p = Data(i,2)+Data(i,3);
    if p =  = Pt
        pa = Data(5,2);// [mm Hg]
        pb = Data(i,3);// [mm Hg]
        T = Data(i,1);// [OC]
    end
end
ya_star = pa/Pt;
yb_star = pb/Pt;
ya1 = ma1/Ma;// [g mol water]
yb1 = mb1/Mb;// [g mol ethylalinine]
Y = ya1*(yb_star/ya_star);// [g mol ethylalinine]
printf("The original mixture contained %f g mol water and %f g mol ethylalinine\n",ya1,yb1);
printf("The mixture will continue to boil at %f OC, where the equilibrium vapour of the indicated composition,until all the water evaporated together with %f g mol ethylalinine\n",T,Y);
printf("The temparature will then rise to 204 OC, and the equilibrium vapour will be of pure ethylalinine");