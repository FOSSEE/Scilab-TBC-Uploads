clear;
clc;

// Illustration 9.7
// Page: 371

printf('Illustration 9.7 - Page: 371\n\n');

// solution

//****Data****//
// a:benzene b:toulene c:o-xylene
// Assume:
Bt = 100;//[OC]
pa = 1370;// [mm Hg]
pb = 550;// [mm Hg]
pc = 200;// [mm Hg]
xFa = 0.5;// [mole fraction]
xFb = 0.25;// [mole fraction]
xFc = 0.25;// [mole fraction]
// Basis:
F = 100;// [mol]
D = 32.5;// [mol]
//*******//

ref = pb;
alpha_a = pa/ref;
alpha_b = pb/ref;
alpha_c = pc/ref;
W = F-D;// [mol]
xbW = 0.3;// [mol]
xaW = 0.4;// [mol]
xcW = 0.3;// [mol]
err = 1;
while(err>(10^(-1)))
    // From Eqn. 9.47:
    deff('[y] = f47(xaW)','y = log(F*xFa/(W*xaW))-(alpha_a*log(F*xFb/(W*xbW)))');
    xaW = fsolve(xbW,f47);
    deff('[y] = f48(xcW)','y = log(F*xFc/(W*xcW))-(alpha_c*log(F*xFb/(W*xbW)))');
    xcW = fsolve(xbW,f48);
    xbW_n = 1-(xaW+xcW);
    err = abs(xbW-xbW_n);
    xbw = xbW_n;
end
// Material balance:
// for A:
deff('[y] = f49(yaD)','y = F*xFa-((D*yaD)+(W*xaW))');
yaD = fsolve(100,f49);// [mole fraction benzene]
// For B:
deff('[y] = f50(ybD)','y = F*xFb-((D*ybD)+(W*xbW))');
ybD = fsolve(100,f50);// [mole fraction toulene]
// For C:
deff('[y] = f51(ycD)','y = F*xFc-((D*ycD)+(W*xcW))');
ycD = fsolve(100,f51);// [mole fraction o-xylene]
printf("The residual compositions are:\n");
printf("Benzene:%f\n",xaW);
printf("Toulene:%f\n",xbW);
printf("o-xylene:%f\n",xcW);
printf("The composited distillate compositions are:\n");
printf("Benzene:%f\n",yaD);
printf("Toulene:%f\n",ybD);
printf("o-xylene:%f\n",ycD);