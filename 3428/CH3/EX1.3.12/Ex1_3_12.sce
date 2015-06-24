//Section-1,Example-2,Page no.AC-250
//To determine the alkalinity due to OH-.
clc;
N=1/50          //Normality of H2SO4
V_1=10        //Volume of 1/50N H2SO4
V_2=200        //Volume of sample of water.
N_P=V_1*N*(1/V_2)
P=N_P*50*1000
M=P
disp(M,'Alkalinity due to OH-(ppm)')
