//Exa 6.21
clc;
clear;
close;
format('v',7);

//Given Data :
m1=5;//Kg
p1=5;//bar
Tsup1=200;//degree C
p2=0.1;//bar
h1=2855;//KJ/Kg(from molliers diagram)
h2=2235;//KJ/Kg(from molliers diagram)
W=m1*(h1-h2);//KJ
disp(W,"Workdone in KJ : ");
//Steam table is used to get some data.
