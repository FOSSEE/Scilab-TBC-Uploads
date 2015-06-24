//Ex:8.15
clc;
clear;
close;
tnr=10;// nonrediative life time in ns
n_inj=0.80;// injection efficiency
n_ex=0.60;// extraction efficiency
nt=0.025;// total efficiency
nr=nt/(n_inj*n_ex);// non rediative life time in ns
tr=((1/nr)-1)*tnr;// rediative life time in ns
printf("The rediative life time =%d ns", tr);