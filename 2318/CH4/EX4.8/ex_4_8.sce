//Example 4.8: design
clc;
clear;
close;
vab=1;//V
vr=2-vab;//V
i=50;//mA
R=vr/(i*10^-3);//ohm
R1=(vr/10)/(i*10^-3);//ohm
n=10;//
tr1=n*R1;//ohm
r2=2*R1;//
l=100;//cm
x=R1/l;//
disp(R,"resistance R is,(ohm)=")
disp(R1,"resistance R1 is,(ohm)=")
disp(r2,"resistance R2 is,(ohm)=")
disp(x,"resistance per cm of slide wire is ,(ohm/cm)=")
