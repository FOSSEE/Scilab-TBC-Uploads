//Example 1_14 page no:31
clc;
I1=1;
I2=5;
Va=70;
V=100;
//calculating R1 and R2
V5=5*60;
Va=100-30;
R2=(70-30)/I2;
R1=(70-50)/I1;
disp(R1,"the resistance R1 is (in ohm)");
disp(R2,"the resistance R2 is (in ohm)");
//calculating R2 when current in R1 is zero
Va=50;
I2=(100-Va)/5;
R2=20/I2;
disp(R2,"the resistance R2 when current flowing through R1 is zero (in ohm)");
