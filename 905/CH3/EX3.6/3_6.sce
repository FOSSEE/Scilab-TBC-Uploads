clear;
clc;

// Illustration 3.6
// Page: 175

printf('Illustration 3.6 -  Page: 175\n\n');

// solution
//*****Data*****//
//  a-methanol   b-water
T = 360; // [K]
P = 101.3; // [kPa]
lambda_a = 33.3; // [MJ/kmole]
lambda_b = 41.3; // [MJ/kmole]
Fg = 0.0017; // [kmole/square m.s]
Fl = 0.0149; // [kmole/square m.s]
yag = 0.36; // [bulk gas phase concentration]
xag = 0.20; // [bulk liquid phase concentration]
R = 1.987; 
//*****//

// From energy balance
// Nb = -(lambda_a/lambda_b)*Na
// and    sia_ag = sia_al = 1/(1-(lambda_a/lambda_b))
sia_ag =5.155;
sia_al = sia_ag;
// Therefore equation 3.29 becomes
// yai = 5.155-4.795(4.955/(5.155-xai))^8.765

// Using equation 3.33, 3.34, 3.35
V2 = 18.07; // [cubic cm/mole]
V1 = 40.73; // [cubic cm/mole]
a12 = 107.38; // [cal/mole]
a21 = 469.5; // [cal/mole]

// Solution of simultaneous equation 
function[f]=F(e)
    f(1) = e(1)+e(2)-1;
    f(2) = e(3)+e(4)-1;
    f(3) = e(3)-5.155+4.795*(4.955/(5.155-e(1)))^(Fl/Fg);
    f(4) = e(3)-((e(1)*exp(16.5938-(3644.3/(e(5)-33))))*(exp(-log(e(1)+e(2)*(V2/V1*exp(-a12/(R*e(5))))))+e(2)*(((V2/V1*exp(-a12/(R*e(5))))/(e(1)+e(2)*(V2/V1*exp(-a12/(R*e(5))))))-((V1/V2*exp(-a21/(R*e(5))))/(e(2)+e(1)*(V1/V2*exp(-a21/(R*e(5)))))))))/P;
    f(5) = e(4)-((e(2)*exp(16.2620-(3800/(e(5)-47))))*(exp(-log(e(2)+e(1)*(V1/V2*exp(-a21/(R*e(5))))))-e(1)*(((V2/V1*exp(-a12/(R*e(5))))/(e(1)+e(2)*(V2/V1*exp(-a12/(R*e(5))))))-((V1/V2*exp(-a21/(R*e(5))))/(e(2)+e(1)*(V1/V2*exp(-a21/(R*e(5)))))))))/P;
    funcprot(0);
endfunction

// Initial guess
e =[0.1 0.9 0.2 0.8 300];
y = fsolve(e,F);
xai = y(1);
xbi = y(2);
yai = y(3);
ybi = y(4);
T = y(5); // [K]

printf("yai is %f\n",yai);
printf("ybi is %f\n",ybi);
printf("xai is %f\n",xai);
printf("xbi is %f\n",xbi);
printf("Temperature is %f\n",T);
// Local Methanol flux, using equation 3.28
Na = sia_ag*Fg*log((sia_ag-yai)/(sia_ag-yag)); // [kmole/square m.s]
printf("Local Methanol flux is %e kmole/square m.s\n\n",Na); 