// Calculating the limiting value of specific magnetic loading
clc;
disp('Example 6.6, Page No. = 6.12')
// Given Data
Bt = 2.0;// Maximum flux density in the armature (in Wb per meter square)
R = 0.7;// Ratio of pole arc to pole pitch
Wt_ys = 0.4;// Ratio of minimum width of tooth to slot pitch
// Calculation of the limiting value of specific magnetic loading
Bav = R*Wt_ys*Bt;// Limiting value of specific magnetic loading (in W per meter square)
disp(Bav,'Limiting value of specific magnetic loading (W per meter square)=');
//in book answer is 0.56 (W per meter square).  The answers vary due to round off error
