//determine value of total current considering errors as limiting errors ans as standrd deviations

clc;
I1=200;
I2=100;
dI1=2;
dI2=5;
I=I1+I2;
dI=((I1/I)*(dI1/I1)+(I2/I)*(dI2/I2));
disp('error considered as limiting errors');
disp(I,'I');
disp(dI*I,'dI');
sdI=sqrt(dI1^2+dI2^2);
disp('error considered as standard deviations');
disp(I,'I');
disp(sdI,'sdI');
