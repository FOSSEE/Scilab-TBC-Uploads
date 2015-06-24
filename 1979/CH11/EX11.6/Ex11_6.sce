//chapter-11 page 506 example 11.6 
//==============================================================================
clc;
clear;

//For a civilian radar
Rmax=30;//maximum range in kms
x=50;
y=2;
disp('Maximum range with an equivalent echoing area of 50 times in kms is');
R=Rmax*x^(1/4);
disp(R);
disp('Range would be increased if Tx power is doubled by a factor of');
f=y^(1/4);
disp(f);

//=========================END OF PROGRAM===============================
