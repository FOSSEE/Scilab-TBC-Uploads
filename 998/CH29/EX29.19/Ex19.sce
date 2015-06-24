//Ex:19
clc;
clear;
close;
c_nu=316.22;//25;//c/n ratio for earth station
c_nd=100;//20;//c/n ratio from a transponder
c_n=1/((c_nu)^(-1)+(c_nd^(-1)));//overall c/n ratio
printf("The overall c/n ratio=%f db ",c_n);
c_ndb=10*log(c_n)/log(10);//overall c/n ratio in db
printf("\n The overall c/n ratio=%f db", c_ndb);