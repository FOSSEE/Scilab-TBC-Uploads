clc;
clear;
//Example 2.50   
//Given
h_oil=180    //W/(sq m.K)
h_air=15    //W/(sq m.K)
T_oil=353    //[K]
T_air=293    //[K]
delta_T=T_oil-T_air;    //[K]
k=80    //Conductivity in  [W/(m.K)]
for_section=11*10^-3    //[m]
L=25    //[mm]
L=L/1000    //[m]
W=1    //[m] Width,..let
t=1    //[mm] 
t=t/1000    //[m]
A=W*t    //[m]
P=2*t
Af=2*L*W    //sq m
N=1
Ab=for_section-A    //[sq m]
//CASE 1: Fin on oil side only
m=sqrt(h_oil*P/(k*A)) 
nf_oil=tanh(m*L)/(m*L)
Ae_oil=Ab+nf_oil*Af*N    //[sq m]
Q=delta_T/(1/(h_oil*Ae_oil)+1/(h_air*for_section))    //[W]
printf("In oil side,Q=%f W\n",Q);
//CASE 2: Fin on  air side only
m=sqrt(h_air*P/(k*A))
nf_air=tanh(m*L)/(m*L)
nf_air=0.928        //Approximation
Ae_air=Ab+nf_air*Af*N    //[sq m]
Q=delta_T/(1/(h_oil*for_section)+1/(h_air*Ae_air))    //[W]
printf("In air side,Q=%f W",Q);
printf("\n From above results we see that more heat transfer takes place if fins are provided on the air side");
