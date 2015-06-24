// Example 11.2
format('v',6)
clc;
clear;
close;
// given data
h_ie= 3.5*10^3;//in Ω
h_fe= 120;
h_re= 1.3*10^-4;
h_oe= 8.5*10^-6;// in S
bita= h_fe;// unit less
// The value of alpha 
alpha= h_fe/(h_fe+1);
disp(alpha,"The value of alpha is : ")
// The value of r'e
r_desh_e= h_ie/h_fe;// in Ω
r_desh_c= h_fe/h_oe;// in Ω
disp(r_desh_e,"The value of r''e in Ω is : ")
// The value of r'c
r_desh_c= r_desh_c*10^-6;// in Mohm
disp(r_desh_c,"The value of r''c in MΩ is : ")
