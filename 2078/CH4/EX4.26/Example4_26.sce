//Exa 4.26
clc;
clear;
close;
//Given data :
r=2/100;//m
d1=4;//m
d2=4;//m
d3=8;//m
epsilon_o=8.854*10^-12;//permitivity
CN=2*%pi*epsilon_o/log((d1*d2*d3)^(1/3)/r);//F
disp(CN,"Part(i) Capacitance per phase per meter length(F) : ");
h1=20;//m
h2=20;//m
h3=20;//m
h12=sqrt(20^2+4^2);//m
h23=sqrt(20^2+4^2);//m
h31=sqrt(20^2+8^2);//m
Deq=(d1*d2*d3)^(1/3);//m
CN=2*%pi*epsilon_o/(log(Deq/r)-log((h12*h23*h31/h1/h2/h3)^(1/3)) );//F
disp(CN,"Part(ii) Capacitance per phase per meter length(F) : ");
