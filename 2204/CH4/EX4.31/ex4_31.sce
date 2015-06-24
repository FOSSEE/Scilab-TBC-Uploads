//Exa 4.31
clc;
clear;
close;
// Given data
A=10000;
R1= 100;// in kΩ
A2= 1/5;// (assumed value)
R2= R1/A2;// in kΩ
// A= A1*A2 and A1= 1+2*RF/R_GB
RFbyR_GB= (A/A2-1)/2;
// [1+2*RF/RG]*A2= 1 and RG= RGB+100 kΩ
R_G= (1-1/A2)/2*100/[(1/A2-1)/2-RFbyR_GB];// in kΩ
R_F= RFbyR_GB*R_G;// in kΩ
disp(R_F,"The value of R_F in kΩ is : ")
disp(R_G*10^3,"The value of R_G in Ω is : ")
disp("This is the base resistance required in series with the pot of 100 kΩ")
