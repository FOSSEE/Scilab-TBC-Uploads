//Example 16_4 page no:748
clc;
//calculating h11
V1=2;
I1=1;//here I1 is assumed to be 1 hence it will cancel
h11=V1/I1;
disp(h11,"the parameter h11 is");
I2=-1;
I1=2;
h21=I2/I1;
disp(h21,"the parameter h21 is");
V1=1;
V2=2;
h12=V1/V2;
disp(h12,"the parameter h12 is");
I2=1;
V2=2;
h22=I2/V2;
disp(h22,"the parameter h22 is");
