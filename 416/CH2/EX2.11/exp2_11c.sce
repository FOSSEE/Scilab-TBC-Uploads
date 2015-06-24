clc
disp("example 2.11")
p1=10;p2=6;p3=8;p4=7 //peak demands of 4 areas
df=1.5;lf=0.65;imdp=0.6;//diversity factor ;annual load factor ;ratio of maximum demand
p=p1+p2+p3+p4
md=p/df
ae=md*lf*8760
imd=imdp*md
ic=md+imd
printf(" sum of maximum=%dMW",p)
printf("\n maximum demand = sum of max.demands/diversity factor =%d/%f = %fMW",p,df,md)
printf("\n annual energy =%fMWh \n increase in maximum demand =%fMW \n installed capacity =%fMW",ae,imd,ic)
