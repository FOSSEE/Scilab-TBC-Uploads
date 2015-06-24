clc;clear;
// Example 8.1

// given data
D=12;
V=10;

// density of air at 25C & 1atm
p=1.18;

//calculations
ke=(V^2)/2/1000;//factor of 1000 for converting J into kJ
m=p*%pi*[D ^2]*V/4; 
MP=m*(ke);
disp(MP,'Maximum power in kW')
