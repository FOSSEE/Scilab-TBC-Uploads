clear;
clc;

// Illustration 9.6
// Page: 370

printf('Illustration 9.6 - Page: 370\n\n');

// solution

//****Data****//
// Basis:
F = 100;// [mol]
xF = 0.5;
D = 0.6*100;// [mol]
//******//

W = F-D;// [mol]
// From Illustration 9.1:
alpha = 2.16;// [average value of alpha]
// From Eqn.9.46;
deff('[y] = f45(xW)','y = log(F*xF/(W*xW))-(alpha*log(F*(1-xF)/(W*(1-xW))))');
xW = fsolve(0.5,f45);// [mole fraction heptane]
deff('[y] = f46(yD)','y = F*xF-((D*yD)+(W*xW))');
yD = fsolve(100,f46);// [mole fraction heptane]
printf("Mole Fraction of heptane in the distillate is %f \n",yD);
printf("Mole Fraction of heptane in the residue is %f \n",xW);