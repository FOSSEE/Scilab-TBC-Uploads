
Er=2.25
ur=1
W=10^9
p=0.2
uo=4*%pi*10^-7
Eo=8.854*10^-12
ko=W*sqrt(uo*Eo)
k2=W*sqrt(uo*Eo*Er)
n1=sqrt(uo/Eo)
n2=sqrt(uo/Eo/Er)
R=(n2-n1)/(n1+n2)
T=2*n2/(n1+n2)
VSWR=(1+p)/(1-p)
Pav=3.84^2/(2*n2)
printf("\nko=%.4f rad/m\nk2=%.4f rad/m\nn1=%.4f ohm\nn2=%.4f ohm\nR=%.2f\nT=%.2f \nVSWR=%.2f\nPav=%.4f W/m^2",ko,k2,n1,n2,R,T,VSWR,Pav)