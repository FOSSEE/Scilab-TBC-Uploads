//Example 2.6
clear;
clc;

//Given
n=1;//moles of benzene
Lv=395;//heat of vapourization of benzene in J g^-1
R=8.314;// gas constant in J K^-1 mol^-1
T=353.2;// temperature in K
m=78;//molecular weight of benzene in g mol^-1

// To determine q,w,delH and DelE
q=Lv*m;//heat supplied in J mol^-1
w=(-1)*R*T;// w in joule
delE=q+w;
delH=delE-w;
mprintf('w = %f J mol^-1',w);
mprintf('\n q = %f J mol^-1',q);
mprintf('\n delE = %f J mol^-1',delE);
mprintf('\n delH = %f J mol^-1',delH);
//end