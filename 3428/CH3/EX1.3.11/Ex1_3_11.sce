//Section-1,Example-1,Page no.AC-249
//To determine the alkalinity due to HCO3-.
clc;
N=1/50         //Normality og H2SO4
V_1=5         //Volume of 1/50N H2SO4
V_2=50        //Volume of sample of water.
N_M=V_1*N*(1/50)
M=N_M*V_2*1000
disp(M,'Alkalinity due to HCO3-(ppm)')
