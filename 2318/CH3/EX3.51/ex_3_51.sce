//Example 3.51:Resistance 
clc;
clear;
close;
p=100;//ohms
q=1000;//ohms
s=518.8;//ohms
ep=0.1;//
eq=0.1;//
es1=0.05;//
es2=0.05;//
es3=0.1;//
es4=0.5;//
tes=0.267;//
pes=(tes/s)*100;//
ds=0.008;//ohms
pds=(ds/s)*100;//
ttos1=pes+pds;//
ttos2=-pes+pds;//
m1=ep+eq+ttos1;//
m2=-ep-eq+ttos2;//
disp(m1,"The maximum (+ve) percentage error in X,=")
disp(m2,"The maximum (-ve) percentage error in X,=")
disp("Therefore limits of percentage error in X is +"+string(m1)+" to "+string(m2)+" ")
