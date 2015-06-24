//example:-8.9,page no.-434.
// program to design a 3 dB 50 ohm langer coupler for operation at 5 GHZ.
f=5*10^9;C=10^(-3/20);
Zo=50;
Zoe=(((4*C)-3+sqrt(9-(8*C^2)))/((2*C)*sqrt((1-C)/(1+C))))*Zo;
Zoo=(((4*C)+3-sqrt(9-(8*C^2)))/((2*C)*sqrt((1+C)/(1-C))))*Zo;
disp(Zoe,'even mode characteristic impedence of a pair of adjacent coupled lines is = ')
disp(Zoo,'even mode characteristic impedence of a pair of adjacent coupled lines is = ')