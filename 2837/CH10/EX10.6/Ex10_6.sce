clc
clear
//Initialization of variables
disp("From table 1 of keenan and keynes,")
h1=1204.8 //Btu/lb
q=174 //Btu/lb
//calculations
h2=h1+q
p2=30 //psia
t2=720 //F
//results
printf("Final state of steam is %d psia and %d F",p2,t2)
printf("\n Final enthalpy is %.1f Btu/lb",h2)
