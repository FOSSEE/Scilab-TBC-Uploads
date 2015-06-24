clc
//Example 17.9
//From figure 17.27
//Writing the mesh equations 
disp('V1=5*I1+4*I2')
disp('V2=4*I1+10*I2')
//Arranging in the standard form 
//V1=h11*I1+h12*V2
//I2=h21*I1+h22*V2
//Therefore h parameters are
h11=3.4;h12=0.4;h21=-0.4;h22=0.1;
h=[h11 h12;h21 h22]
disp(h)