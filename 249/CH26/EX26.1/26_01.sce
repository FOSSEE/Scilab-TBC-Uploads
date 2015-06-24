clear
clc
//Lets say F(Ri)/F=F_ri
F_50=0.3;F_100=0.4;F_200=0.3;
//The time required(min)for 3 size of particles is
t_50=5;t_100=10;t_200=20;
//Cosidering solids to be in plug flow with tp=8 min
tp=8;
//1-XBavg=[1-XB(50 um)]F(50 um)/F+ [1-XB(100 um)]F(100 um)/F+.......
//Because for 3 sizes of particles,R1:R2:R3=t1:t2:t3
//From eqn 25.23,[1-XB(Ri)]=(1-tp/t(ri))^3
a=((1-(tp/t_50))^3)*F_50;b=((1-(tp/t_100))^3)*F_100;c=((1-(tp/t_200))^3)*F_200;
g=[a,b,c];
sum1=0;
for p=1:3
   if g(p)>0
       sum1=sum1+g(p);
end
end
f_converted=1-sum1;
printf("\n The fraction of solid converted equals %f ",f_converted)