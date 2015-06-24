//Example 8.14

clear;

clc;

A0=1;

brecmin=5;

Rc=3*10^3;

Rf=Rc*(brecmin-1);

GBP=20*10^6;

fx=(1/brecmin)*GBP;

Cc=brecmin/(%pi*Rc*fx);

printf("(a) Rc=%.f kohms",Rc*10^(-3));

printf("\n    Rf=%.f kohms",Rf*10^(-3));

printf("\n    Cc=%.f pF",Cc*10^12);

printf("\n\n(b) A(jf)=1/[1+jf/(%.f MHz)] V/V",fx*10^(-6));