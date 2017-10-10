//Example 2.2
clear;
clc;

//Given
v1=2.28;//initial volume in m^3
v2=4.56;//final volume in m^3
R=8.314;// gas constant in J K^-1 mol^-1
T=300.15;// temperature in K
n=1;//moles

// To determine delH,delE,q,w
w=(-1)*R*T* log(v2/v1);// w in joule mol^-1
delE=0;//for reversible process
q=delE-w;//by using 1st law
delH=0;//as del(PV)=0
mprintf('w = %f Joule mol^-1',w);
mprintf('\n q = %f Joule mol^-1',q);
mprintf('\n delH = %f Joule mol^-1',delH);
mprintf('\n delE = %f Joule mol^-1 since it is a reversible process',delE);
//end