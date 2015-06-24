// Example 10.15: (a) CB and CL
//                (b) Zero introduced by CE
clc, clear
RE=1.5e3; // in ohms
Rs=600; // in ohms
bta=100;
r_pi=1e3; // in ohms
fL=50; // in hertz

disp("Part (a)");
fLB=fL/2; // in hertz
fLE=fLB; // in hertz
CB=1/(2*%pi*fLB*(Rs+r_pi)); // in farads
CB=CB*1e6; // in micro-farads
function[c]=parallel(a,b)
    c=a*b/(a+b);
endfunction
CE=1/(2*%pi*fLE*parallel(RE,(Rs+r_pi)/(1+bta))); // in farads
CE=CE*1e6; // in micro-farads
disp(CB,"CB (µF) =");
disp(CE,"CE (µF) =");

disp("Part (b)");
fE=1e6/(2*%pi*RE*CE); // in hertz
disp(fE, "fE (Hz) =");