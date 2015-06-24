//Example 4.13:resistance and reactance
clc;
clear;
close;
r1=2;//ohm
r2=9;//
imp=r1+%i*r2;//ohm
mg=sqrt(r1^2+r2^2);//
th=atand(r2/r1);//
vm=85;//V
va=40;//degree
vm1=90;//V
va1=45;//degree
ccm=vm/mg;//A
cca=va-th;//degree
impm=vm1/ccm;//ohm
impa=va1-cca;//degree
reac=impm*sind(impa);//ohm
rc=sqrt(impm^2-reac^2);//ohm
f=50;//Hz
ind=reac/(2*%pi*f);//
disp(rc,"reactance is,(ohm)=")
disp(fix(ind*10^3),"inductance of the coil is,(mH)=")
