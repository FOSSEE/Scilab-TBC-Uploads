// Example 6 // Ch 2
clc;
clear;
close;
// given data 
V=400*10^3; // applied voltage in kV
r_eq=0.08874; // equivalent radius in meters
H=12; // bundle height in meters
d=9; // pole to pole spacing in meters
Epsilon_o=8.85*10^-12;
x=sqrt((2*H)^2 + d^2);
Q = (V*2*%pi*Epsilon_o) / [(log(2*H/r_eq)) - log(x/d)]; 
q = Q/2; 
printf("charge per bundle is %e C/m \n",Q)
printf("charge per subconductor is %e C/m \n",q)
r = 0.0175; //subconductor radius in meters
R = 0.45; //subconductor-to-subconductor spacing in meters
q = 2.44*1e-6; //charge per subconductor in C/m
d = 9; //in meters
Epsilon_o = 8.85*10^-12; //in F/m
x=[(1/r) + (1/R)];
y=[(1/r) - (1/R)];

Max = (q/(2*%pi*Epsilon_o))*(x); //maximum surface field in V/m
printf("maximum surface field is %e V/m \n ", Max)

Min = (q/(2*%pi*Epsilon_o))*[y]; //minimum surface field in V/m
printf("minimum surface field is %f V/m \n", Min)

Avg = (q/(2*%pi*Epsilon_o))*[1/r]; //average surface field in V/m
printf("average surface field is %f V/m \n", Avg)

E_01 = [(q/(2*%pi*Epsilon_o))*[1/r + 1/R]] - [(q/(2*%pi*Epsilon_o))*[1/(d+r)+1/(d+R+r)]];//field at outer point of subconductor in V/m
disp(E_01, "field at outer point of subconductor 1(V/m) =")
E_02 = [(q/(2*%pi*Epsilon_o))*[1/r + 1/R]] - [(q/(2*%pi*Epsilon_o))*[1/(d-R-r)+1/(d-r)]];
disp(E_02, "field at outer point of subconductor 2(V/m) =")
E_l1 = [(q/(2*%pi*Epsilon_o))*[1/r - 1/R] - (q/(2*%pi*Epsilon_o))*[1/(d-r)+1/(d+R-r)]];
disp(E_l1, "field at inner point of subconductor 1(V/m) =")
E_l2 = [(q/(2*%pi*Epsilon_o))*[1/r - 1/R] - (q/(2*%pi*Epsilon_o))*[1/(d-R-r)+1/(d+R)]];
disp(E_l2, "field at inner point of subconductor 2(V/m) =")
Avg = (E_01 + E_02)/2 // average maximum gradient in V/m
disp(Avg, "average maximum gradient is")

//answers in the book is wrong for subconductor 2, El1 and El2
