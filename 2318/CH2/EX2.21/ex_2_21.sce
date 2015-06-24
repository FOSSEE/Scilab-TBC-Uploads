//Example 2.21://consumer monthly bill ,power factor and average cost per unit
clc;
clear;
close;
format('v',9)
kwh=125000;//
kvarh=100000;//
kvah=sqrt(kwh^2+kvarh^2);//kVAh
kw=180;//
kvar=125;//
mkva=sqrt(kw^2+kvar^2);//kVA
pkva=15;//rupees
pkvah=0.1;//reupees
tmb=pkva*mkva+pkvah*kvah;//in Rs
disp(tmb,"total monthly bill in Rs")
pf=kwh/kvah;//power factor
d=30;//days
t=24;//hours a day
lf=((kwh/(d*t))/kw);//load factor
avcp=tmb/kwh;//in paisa
disp(pf,"power factor is")
disp(lf,"load factor is")
disp(avcp*100,"average cost per unit (kWh) in paisa is")
//total monthly bill and load factor is calculated wrong in the book
