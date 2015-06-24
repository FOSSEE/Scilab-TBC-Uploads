clear
clc
P=760;//total vapour pressure in torr
MA=112.5;//molar mass of chlorobenzene in gm
MB=18;//molar mass of water in gm
P1=538.9;//vapour pressure of water at 90.6 C
PA=(P-P1);//vapour pressure of pure chlorobenzene in torr
W1=(PA*MA)/(P1*MB);//
W2=1/W1;//
W=W2+1;//
M=100;//in gm
WA=M/W;//
printf('WA=%.1d gm',WA)

//There are some errors in the solution given in textbook
//page 191
