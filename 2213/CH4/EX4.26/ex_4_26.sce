//Example 4.26//number ,rating and disposition of lamps
clc;
clear;
close;
a=30*30;//
e=75;//
uf=0.5;//
df=1-0.2;//
le=15;//efficiency
ph=(a*e)/(uf*df);//
W=ph/le;//
ew=300;//W
N=W/ew;//
disp(N,"total number of lamps is ,= (say 42)")
disp(W,"wattage of lamps is,(W)=")
