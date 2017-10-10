// Exa 3.14
clc;
clear;
close;
// Given data 
bita=100;
hFE= 100;
VCEsat= 0.2;// in V
VBEsat= 0.8;// in V
VBEactive= 0.7;// in V
VBB= 5;// in V
VCC= 10;// in V
R_C= 3;// in kΩ
R_C=R_C*10^3;// in Ω
R_B= 50;// in kΩ
R_B=R_B*10^3;// in Ω
// Formula VCC= ICsat*R_C+VCEsat
ICsat= (VCC-VCEsat)/R_C;//A
disp(ICsat*10^3,"The value of IC(sat) in mA is : ")
IBmin= ICsat/bita;// in A
// Apply KVL to input circuit,  VBB= IB*R_B+VBEsat
IB= (VBB-VBEsat)/R_B;// in A
disp(IB*10^6,"Actual base current in µA is : ")
