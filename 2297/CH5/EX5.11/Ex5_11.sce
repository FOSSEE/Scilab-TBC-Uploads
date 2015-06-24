// Example 5.11;resistance
clc;
clear;
// given :
format('v',6)
im=10;//mA
i=100;//mA
m=i/im;//multiplying factor
rm=50;//ohms
rsh=rm/(m-1);//in ohms
disp("part (i)")
disp(rsh,"resistance of shunt (range 0-100mA) Rsh1 is,(Ohm)=")
i1=500;//mA
m1=i1/im;//multiplying factor
rm1=50;//ohms
rsh1=rm1/(m1-1);//in ohms
disp("part (ii)")
disp(rsh1,"resistance of shunt (range 0-500mA) Rsh2 is,(Ohm)=")
im2=1;//A
i2=100;//A
m2=i2/im2;//multiplying factor
rm2=50;//ohms
rsh2=rm2/(m2-1);//in ohms
disp("part (iii)")
disp(rsh2,"resistance of shunt (range 0-1A) Rsh2 is,(Ohm)=")
im3=1;//A
i3=500;//A
m3=i3/im3;//multiplying factor
rm3=50;//ohms
rsh3=rm3/(m3-1);//in ohms
disp("part (iv)")
disp(rsh3,"resistance of shunt (range 0-5A) Rsh2 is,(Ohm)=")
