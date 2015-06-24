//Chapter-6, Example 6.9, Page 241
//=============================================================================
clc;
//Input parameters
ins=0.5;//insertion loss in db
iso=20;//isolation loss in db
S=2;//VSWR 
//Calculations
S21=10^-(ins/20);//insertion loss=0.5=-20*log[S21]
S13=S21;
S32=S13;
S12=10^-(iso/20);//isolation loss=30=-20*log[s12]
S23=S12;
S31=S23;
p=(S-1)/(S+1);
S11=p;
S22=p;
S33=p;
[S]=[S11,S12,S13;S21,S22,S23;S31,S32,S33];
disp(S);
//for a perfectly matched,non-reciprocal,lossless 3-port circulator,[S] is given by
//[S]=[0,0,S13;S21,0,0;,0,S32,0]
//i.e.,S13=S21=S32=1
//[S]=[0,0,1;1,0,0;0,1,0]
//=================================END OF PROGRAM==============================
