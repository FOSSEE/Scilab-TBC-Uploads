// Example 11.12: (b) AF
clc, clear
AV=4000;
bta=1/300;
RS=2; // in kilo-ohms
RE=RS; // in kilo-ohms
RC=6; // in kilo-ohms
btao=200;
r_pi=4; // in kilo-ohms

disp("Part (b)");
x=-AV*-btao*RC/(r_pi+RS);
AF=x/(1+x*bta);
disp(AF,"AF =");