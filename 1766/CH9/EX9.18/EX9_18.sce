clc;funcprot(0);//Example 9.18
//Initilisation of Variables
E1=0.4;...//Emmisivity of wall 1
E2=0.8;...//Emmisivity of wall 2
E3=0.05;...//Emmisivity of shield
F13=1;.....//Shape factor 
F32=1;...//
n=1;...//Number of shields
Pr=(1-((1/(((1-E1)/E1)+(1/F13)+((1-E3)/E3)+((1-E3)/E3)+(1/F32)+((1-E2)/E2)))/((n)/((1/E1)+(1/E2)-1))))
disp(100*Pr,"The percentage reduction in heat transfer as a result of aluminum shield is:")
