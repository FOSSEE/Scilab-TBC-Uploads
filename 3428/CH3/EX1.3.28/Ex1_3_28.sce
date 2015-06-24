//Section-1,Example-1,Page no.AC-279
//To find the hardness of water sample.
clc;
V=10000             //Volume of water sample(L)
A_NaCl=150*200*(50/58.5)      //NaCl(gm) contained in 200L of NaCl solution
A_1=(A_NaCl*10^7*10^-4)/V   //CaCO3 eq.(mg/L) in 1 L of water
disp(A_1,'Hardness of water (ppm)')
