//determine dia of the shaft
clc
//solution
//given
//ref fig 14.4
D=1500//mm
R=750//mm
T1=5400//N
T2=1800//N
L=400//mm
t=42//N/mm^2
T=(T1-T2)*R//N-mm
W=T1+T2//N
M=W*L//N-mm
//let d be dia of shaft
Te=sqrt(M^2 + T^2)//N-mm
//Te=(%pi/16)*t*d^3
d=(Te/8.25)^(1/3)//mm
printf("the dia of shaft is,%f mm",d)
