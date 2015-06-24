//Section-1,Example-3,Page no.AC-250
//To calculate alkalinity in terms of CaCO3.
clc;
N=1/50          //Normality of H2SO4
V_1=29        //Volume of 1/50N H2SO4 using phenolphthalien as indicator
V_2=500        //Volume of sample of water.
V_3=58        //Volume of 1/50N H2SO4 using methyl orange as indicator
N_P=(V_1/V_2)*N
P=N_P*50*1000
N_M=(V_3/V_2)*N
M=N_M*50*1000
//P=(1/2)M
disp(M,'Alkalinity due to (CO3)2-(ppm)')

