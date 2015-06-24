clc;clear;
//Example 6.6

//given data
COP=13.5;
TH=75+460;//in R
TL=35+460;//in R

//calculations
COPR=1/(TH/TL-1);
if(COPR>=COP)
    disp('claim is true');
else
    disp('claim is false')
