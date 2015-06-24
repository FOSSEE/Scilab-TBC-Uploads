clear;
//clc();
l=10;.....//length of tx line in km

s1=2500;....// power in KVA 
s2=2000;....// power in KVA
s3=1500;....// power in KVA

t1=8;.......//time in hrs
t2=9;.......//time in hrs
t3=7;.......//time in hrs

dep_rate=0.08;..//depreciation rate
cost=0.15;......//cost of energy in Rs
res=0.173.......//resistance per sq cm

nos_wd=250;.....//number of working days

ann_int=6000*l*dep_rate;..//annual interst and depriciation on capitol cost in Rs

r=res*l;..//(resistance*area) of each conductor in ohms

c=sqrt(3);
d=c*33;....//kv of tx line
i1=(s1/d);....//load current at 2500KVA in A

i2=(s2/d);....//load current at 2000KVA in A

i3=(s3/d);....//load current at 1500KVA in A

d_en_loss=(3*r/1000)*(t1*i1*i1 + t2*i2*i2 + t3*i3*i3);..//daily energy loss in KWH

ann_cost=d_en_loss*nos_wd;..//annual enrgy loss in KWH

cost_el=ann_cost*cost;..//(cost of energy loss per annum)*area

e=cost_el/ann_int;..//by kelvin's law area
f=sqrt(e);
printf("\n the most economical area is:  %.2f sq cm\n ",f);..//area in cm sq

