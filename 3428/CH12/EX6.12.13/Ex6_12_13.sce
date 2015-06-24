//Section-6,Example-5,Page no.-P.48
//To calculate the quantity of ethyl alcohol required.
clc;
dl_Tf=10                  //(K)
K_f=1.86                  //(Kkgmol^-1)
M_w=62
d=1                    //density (assumption)
V=10                   //Volume(L)
M=V*d
W=((dl_Tf*M*M_w)/K_f)*10^-3
disp(W,'Quantity of ethyl alcohol required(kg)')
