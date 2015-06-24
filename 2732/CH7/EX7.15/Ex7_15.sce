clc
//initilization of new variables
clear
wt=0.8 //cm
ft=1.4 //cm
w=10 //cm
y=20 //cm
T=750 //T==750*sigma_y
// calculations
MpF=ft*w*(40-2*ft)
c1=((40-2*ft)/2)^2-(T-MpF)/wt
c=sqrt(3*c1)
// results
printf('Elastic core of %.1f cm depth is present',2*c)
