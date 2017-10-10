// Problem 5.11,Page no.131

clc;clear;
close;

D=4 //cm //Outside diameter
d=3 //cm //inside diamter
L=2 //m //span of beam
W=1000 //N //Max safe Load

//Calculations

I=%pi*64**-1*(D**4-d**4) //cm**4 //M.I
A=%pi*4**-1*(D**2-d**2) //cm**2 //Area 
y=2 
Z=I*y**-1 //cm**3 //Section modulus

M=W*L*4**-1 //N*cm //Max bending moment

//From Flexural Formula
sigma=M*Z**-1 //N/cm**2

//For Tubes
//M.I about x-x axis
I_1=4*(8.59+5.492*2**2) //cm**4 

Z_1=122.32*4**-1 //cm**3 

//M=W_1*200*4**-1 //N*cm
//After substituting values we get
//M=50*W_1 (equation 1)

//Again from Flexural Formula
M=sigma*Z_1

//substitute value of M in equation 1

W=11640*30.58*50**-1 //N

//Result
printf("Max central load is %.2f N",W)
