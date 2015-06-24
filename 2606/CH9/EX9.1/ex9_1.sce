//Page Number: 9.10
//Example 9.1
clc;
//Given
wo=2*%pi*8000;
n=2D-9; 
//N0=(n/4*%pi)integrate('1/(1+((w/w0)^2))','w',-%inf,+%inf)
//Which yields
//Output Noise Power
N0=(wo*n)/4;
disp("W",N0,"Output Noise Power: ");


