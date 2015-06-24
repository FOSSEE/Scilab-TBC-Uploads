clear;
clc;

// Illustration 9.5
// Page: 366

printf('Illustration 9.5 - Page: 366\n\n');

// solution

//****Data****//
Pt = 760;// [mm Hg]
zFa = 0.5;// [mol fraction benzene]
zFb = 0.25;// [mol fraction toulene]
zFc = 0.25;// [mol fraction o-xylene]
//********//

// Basis:
F = 100;// [mol feed]
// For Summtion of Yd_star to be unity, W/D = 2.08 
// The Eqn.are 
// (1): W+D = F 
// (2): W-2.08D = 0
a = [1 1;1 -2.08];
b = [F;0];
soln = a\b;
W = soln(1);
D = soln(2);
Sub = ['A','B','C'];
p = [1370 550 200];// [mm Hg]
m = zeros(3);
zF = [zFa zFb zFc];// [Given]
yd_star = zeros(3);
xW = zeros(3);
for i = 1:3
    m(i) = p(i)/Pt;
    yd_star(i) = zF(i)*((W/D)+1)/(1+(W/(D*m(i))));
    xW(i) = yd_star(i)/m(i);
end
printf("\t \t \t \t \t \t \t \t  At W/D = 2.08\n\n\n");
printf("Substance \t \t p(mm Hg)\t \t m\t \t \t \t zF\t \t \t \t yd*\t\t\t\txW\n");
for i = 1:3
    printf("%c\t \t \t %d\t \t \t %f\t \t \t %f\t \t \t %f \t \t \t%f\n",Sub(i),p(i),m(i),zF(i),yd_star(i),xW(i));
end