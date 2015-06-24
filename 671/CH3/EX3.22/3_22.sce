L=20/1000
VR2_0p=10
VR2_inf=0
VR2_1=5

t=1/1000
T=-t/log((VR2_1-VR2_inf)/(VR2_0p-VR2_inf))

R2=L/T
R1=1/(2/VR2_0p-1/R2)

disp(R2,R1)