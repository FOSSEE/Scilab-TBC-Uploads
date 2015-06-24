//Example No. 10.10.2
clc;
clear;
close;
format('v',7);
tau=0.895;//scale factor
sigma=0.166;//(spacing factor)
fU=30;//MHz(Upper frequency)
fL=10;//MHz(Lower frequency)
c=3*10^8;//m/s(Speed of light)
lambdaU=c/(fU*10^6);//m(Upper wavelength)
lambdaL=c/(fL*10^6);//m(Lower wavelength)
l1=lambdaU/2;//m(Length of shortest element)
disp(l1,"Length of shortest element, l1 in meter is  : ");
l2=l1/tau;l3=l2/tau;l4=l3/tau;l4=l3/tau;l5=l4/tau;l6=l5/tau;l7=l6/tau;l8=l7/tau;l9=l8/tau;l10=l9/tau;l11=l10/tau;//m(Length of element)
disp(l11,l10,l9,l8,l7,l6,l5,l4,l3,l2,"Other elements length(m) l2, l3, l4, l5, l6, l7, l8, l9, l10, l11 are : ");
alfa=17.97;//degree(angle)
R1=(l1/2)/tand(alfa/2);//m(Spacing between elements)
R2=R1/tau;R3=R2/tau;R4=R3/tau;R4=R3/tau;R5=R4/tau;R6=R5/tau;R7=R6/tau;R8=R7/tau;R9=R8/tau;R10=R9/tau;R11=R10/tau;//m
disp(R11,R10,R9,R8,R7,R6,R5,R4,R3,R2,R1,"Spacing between elements in meter R1, R2, R3, R4, R5, R6, R7, R8,R9, R10, R11 are : ");
//Answer is not accurate in the book.
