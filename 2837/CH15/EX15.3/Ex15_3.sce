clc
clear
//Initalization of variables
disp("By trial and error,")
X=0.201
X1=0.2
R=59.3 //universal gas constant
T=5000 //R
U=121200 //Btu/mol
Uco2=51635 //Btu/mol
Un2=27907 //Btu/mol
U3=29616 //Btu/mol
U4=27589 //Btu/mol
//calculations
kp1=R*(1-X1)/X1^1.5 /T^0.5
kp2=R*(1-X)/X^1.5 /T^0.5
q=(1-X)*Uco2 + X*Un2+ X/2 *U3 +1.88*U4 + X*U
disp("Interpolating between T=4500 R and T=5000 R, we get")
T2=4907 //R
//results
printf("Max. obtainable temperature = %d R",T2)
