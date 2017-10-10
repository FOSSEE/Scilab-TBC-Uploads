clear
clc
//Example 12.7 TEST SECTION SIZE IN SUPERSONIC WIND TUNNEL
k=1.4;
M=3; //Mach number
Ao=10; //area[cm^2]
//Cross-sectional area
A=Ao*(1/M)*{(1+[(k-1)/2]*M^2)/((k+1)/2)}^((k+1)/(2*(k-1))) //[cm^2]
printf("\n The cross-sectional area of the test section, A = %.1f cm^2.\n",A)