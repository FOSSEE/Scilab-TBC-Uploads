//Example_a_3_3 page no:132
clc;
Rab=(20*40)/(20+40);
Rth=Rab;
Rn=Rab;
I=(50-10)/(40+20);
Vth=10+(I*20);
I1=10/20;
I2=50/40;
In=I1+I2;//thevenin voltage varie slightly due to current value I is rounded off in text book
disp(Vth,"the thevenin voltage is (in V)");
disp(Rth,"the thevenin resistance is (in ohm)");
disp(In,"the norton current is (in A)");
disp(Rn,"the norton resistance is (in ohm)");
