//Exa 6.20
clc;
clear;
close;
format('v',7);

//Given Data :
m=2;//Kg
p1=15;//bar
V1=0.3;//m^3
p2=1.5;//bar
v1=V1/m;//m^3/Kg
//p1*v1^(1.3)=p2*v2^(1.3)
v2=exp((log(p1)+1.3*log(v1)-log(p2))/1.3);//m^3/Kg
Vg2=1.1635;//m^3/Kg(at 1.5 bar)
x2=v2/Vg2;//dry
disp(x2,"Dryness of steam : ");
n=1.3;
W=m*(p1*v1-p2*v2)*10^5/(n-1);//J
W=W/1000;//KJ
disp(W,"Workdone in KJ : ");
//Steam table is used to get some data.
//Answer is wrong in the book.
