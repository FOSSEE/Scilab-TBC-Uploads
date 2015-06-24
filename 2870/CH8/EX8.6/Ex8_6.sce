clc;clear;
//Example 8.6

//given data
COP=1;
TL=283;//in K
TH=294;//in K

//calculations
COPHP=1/(1-TL/TH);
nII=COP/COPHP;
disp(nII,'the second law efficiency')
