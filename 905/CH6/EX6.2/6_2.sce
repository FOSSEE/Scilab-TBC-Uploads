clear;
clc;

// Illustration 6.2
// Page: 326

printf('Illustration 6.2 -  Page: 326\n\n');

// solution
//*****Data*****//
// a-benzene   b-toluene   c-orthoxylene
T = 373; // [K]
P = 101.3; // [kPa]
Pa = 182.7; // [kPa]
Pb = 73.3; // [kPa]
Pc= 26.7; // [kPa]
Zfa = 0.5;
Zfb = 0.25;
Zfc = 0.25;
//*****//
// Therefore
ma = Pa/P;
mb = Pb/P;
mc = Pc/P;
// Let Feed is 1 kmole
// Therefore D+W = 1

// Solution of simultaneous equation
function[f]=F(e)
    f(1) = e(1)+e(2)-1;
    f(2) = e(2)/e(1) + (e(3)-Zfa)/(e(4)-Zfa);
    f(3) = e(3)-ma*e(4);
    f(4) = e(5)-mb*e(6);
    f(5) = 1-e(3)-e(5) -mc*(1-e(4)-e(6));
    f(6) = e(2)/e(1) + (e(5)-Zfb)/(e(6)-Zfb);
    funcprot(0);
endfunction

// Initial guess
e = [0.326 0.674 0.719 0.408 0.198 0.272];
y = fsolve(e,F);
D = y(1);
W = y(2);
Yad = y(3);
Xaw = y(4);
Ybd = y(5);
Xbw = y(6);
Ycd = 1-Yad-Ybd;
Xcw = 1-Xaw-Xbw;

printf("The amounts of liquid and vapor products are %f and %f respectively\n\n",D,W);
printf("The vapor compositions of components A, B and C are %f, %f and %f respectively\n\n",Yad,Ybd,Ycd);
printf("The liquid composition of components A, B and C are %f, %f and %f respectively\n\n",Xaw,Xbw,Xcw); 