// Example 1.18
clc;
clear;
close;
// Given data
format('v',5);
VEE= 10;// in V
VBE= 0.715;// in V
beta_ac= 100;
beta_dc= 100;
R= 5.6;// in kΩ
I_REF= (VEE-VBE)/R;// in mA
IC1= I_REF*beta_ac/(2+beta_ac);// in mA
// IC1= IC2= IC3  (by symmetry)
IC2= IC1;// in mA
IC3= IC2;// in mA
I_RC= IC1+IC2+IC3;// current through RC in mA
disp(I_RC,"The current through RC in mA is : ");
