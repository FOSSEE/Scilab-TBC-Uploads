clc
//Chapter1
//Ex_1.11
//Given
//from fig 7.1
//at 210 degree celcius
disp("At 210 degree celcius")
C_L=50 //CL=50% Sn
C_alpha=18 //C_alpha=18% Sn
Co=40 // solidification of alloy
//lever rule
W_alpha=(C_L-Co)/(C_L-C_alpha)
disp(W_alpha*100,"weight fraction of alpha in the alloy is")
W_L=1-W_alpha
disp(W_L*100,"weight fraction of liquid phase in the alloy is")
//at 183.5 degree celcius
disp("At 183.5 degree celcius")
C_L=61.9 //CL=50% Sn
C_alpha=19.2 //C_alpha=18% Sn
Co=40 // solidification of alloy
//lever rule
W_alpha=(C_L-Co)/(C_L-C_alpha)
disp(W_alpha*100,"weight fraction of alpha in the alloy is")
W_L=1-W_alpha
disp(W_L*100,"weight fraction of liquid phase in the alloy is")
//at 182.5 degree celcius
disp("At 182.5 degree celcius")
C_beta=97.5 //CL=50% Sn
C_alpha=19.2 //C_alpha=18% Sn
Co=40 // solidification of alloy
//lever rule
W_alpha=(C_beta-Co)/(C_beta-C_alpha)
disp(W_alpha*100,"weight fraction of alpha in the alloy is")
W_beta=1-W_alpha
disp(W_beta*100,"weight fraction of beta phase in the alloy is")
