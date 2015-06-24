//Section-1,Example-5,Page no.AC-252
//To determine the types and extent of alkalinity present.
clc;
N=1/50          //Normality of H2SO4
V_1=9.4        //Volume of 1/50N H2SO4 using phenolphthalien as indicator
V_2=200        //Volume of sample of water.
V_3=(9.4+21)        //Volume of 1/50N H2SO4 using methyl orange as indicator
N_P=(V_1/V_2)*N
P=N_P*50*1000
N_M=(V_3/V_2)*N
M=N_M*50*1000
A_1=M-(2*P)               //Alkalinity due to OH- (ppm)
disp(A_1,'Alkalinity due to (HCO3)2-(ppm)')
A_2=2*P                //Alkalinity due to (CO3)2- (ppm)
disp(A_2,'Alkalinity due to (CO3)2-(ppm)')
