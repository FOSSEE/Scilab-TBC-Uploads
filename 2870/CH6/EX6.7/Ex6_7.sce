clc;clear;
//Example 6.7

//given data
TL=-5+273;//in C
TH=21+273;//in C
QH=37.5;

//calculations
COPHP=1/(1-TL/TH);
Wnet=QH/COPHP;
disp(Wnet,'minimum power required in kW')
