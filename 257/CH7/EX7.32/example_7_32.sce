syms G M U Q ;

T1=U*Q*G;
T2=M*G;

L1=-G*Q;

delta=1-(L1)
del1=1;
del2=1;

TF=(T1*del1 + T2*del2)/delta ;
disp(TF,"T = ")

disp("sensitivity T wrt G is 1/(1+Q*G)")



