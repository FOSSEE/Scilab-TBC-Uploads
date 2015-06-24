//Chapter-6, Example 6.7, Page 240
//=============================================================================
clc;
//Input parameters
ins=0.5;//insertion loss in db
iso=30;//isolation loss in db
//Calculations
S21=10^-(ins/20);//insertion loss=0.5=-20*log[S21]
S12=10^-(iso/20);//isolation loss=30=-20*log[s12]
S11=0;
S22=0;
[S]=[S11,S12;S21,S22];
disp(S);
//=================================END OF PROGRAM==============================
