
R1=10000
R2=1
C=.002*10^-6
L=10^-6
//B=complex(0,W*L)/complex(R1-W^2*R2*C*L,W*(L+R1*R2*C))
W=sqrt(R1/(R2*L*C))
printf("\nW=sqrt(R1/(R2*L*C))=%.2e rad/s",W)
f=W/(2*%pi)
printf("\nf=W/(2*pi)=%.3eHz",f)
A=1+R1*R2*C/L
printf("\nA=1+R1*R2*C/L=%.3f",A)