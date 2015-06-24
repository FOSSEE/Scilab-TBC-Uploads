//Section-1,Example-4,Page no.AC-251
//To determine the types and extent of alkalinity present.
clc;
N=1/50          //Normality of H2SO4
V_1=30        //Volume of 1/50N H2SO4 using phenolphthalien as indicator
V_2=100        //Volume of sample of water.
V_3=(30+20)        //Volume of 1/50N H2SO4 using methyl orange as indicator
N_P=(V_1/V_2)*N
P=N_P*50*1000
N_M=(V_3/V_2)*N
M=N_M*50*1000
A_1=(2*P)-M               //Alkalinity due to OH- (ppm)
disp(A_1,'Alkalinity due to OH-(ppm)')
A_2=2*(M-P)                //Alkalinity due to (CO3)2- (ppm)
disp(A_2,'Alkalinity due to (CO3)2-(ppm)')
