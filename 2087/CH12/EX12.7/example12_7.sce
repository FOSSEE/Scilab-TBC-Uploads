

//example12.7
//calculate heigth of weir to be built
clc;funcprot(0);
//given
B=30;            //stream width
D=3;             //stream depth
V=1.25;          //mean velocity
Cd=0.95;         //discharge coefficient
Q=B*D*V;
C=2*Cd*(2*9.81)^0.5/3;
x=4-(Q/(C*B))^(2/3);
x=round(x*1000)/1000;
mprintf("heigth of weir to be built=%f m.",x);
