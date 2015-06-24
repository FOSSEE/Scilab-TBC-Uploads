

//example 14.35
//design the distributory using Laecey theory
clc;funcprot(0);
//given
f=0.85;           //silt factor
AR=3600;          //area for rabi
AK=1400;          //area for kharif
delta_r=0.135;    //kor depth for rabi
delta_k=0.19;     //kor depth for kharif
tr=4;             //kor period for rabi
tk=2.5;           //kor period for kharif
Du_r=8.64*tr*7/delta_r;     //duty for rabi
Du_k=8.64*tk*7/delta_k;    //duty for kharif
q_r=AR/Du_r;               //discharge for rabi
q_k=AK/Du_k;               //discharge for kharif
Q=q_r;                   //since q_r>q_k
V=(Q*f^2/144)^(1/6);
A=Q/V;
P=4.75*(Q)^0.5;
D=(P-(P^2-6.944*A)^0.5)/3.472;
S=f^(5/3)/(3340*Q^(1/6));
P=round(P*100)/100;
D=round(D*100)/100;
mprintf("\nBed slope=%f.",S);
mprintf("\nPerimeter of channel section=%f m.",P);
mprintf("\nDepth of channel section=%f m.",D);
