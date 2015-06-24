//Example 4.12:voltage and percentage error
clc;
clear;
close;
st=15;//steps
r1=10;//ohm
v1=0.1;//V
r2=10;//ohm
r3=9.9;//ohm
v2=0.0185;//V
acr=(r1*r3)+((r2*v2)/v1);//ohm
v3=1.0185;//V
I=v3/acr;//
n=6;//
acr1=(n*r3)+(r2*0.0525)/v1;//ohm
tvr=I*acr1;//V
vg=0.6525;//
er=((tvr-vg)/tvr)*100;//
disp(tvr,"true value of drop across the resistance is,(V)=")
disp(er,"percentage error is,(%)=")
