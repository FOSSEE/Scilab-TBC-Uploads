clc;
//let three intercepts are I1,I2,I3
I1=3;
I2=-2;
I3=3/2;
//let their reciprocals are I1_1,I2_1,I3_1
I1_1=1/I1;
I2_1=1/I2;
I3_1=1/I3;
//LCM of I1_1,I2_1,I3_1 are 6 . 
//By multiply LCM with I1_!,I2_1,I3_1 we will get miller indices
LCM=6;
M_1=LCM*I1_1;
M_2=LCM*I2_1 ;
M_3=LCM*I3_1;
disp(M_1,'Miller indices of plane =');
disp(M_2);
disp(M_3);
