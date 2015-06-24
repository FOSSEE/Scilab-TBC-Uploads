//fiber optic communications by joseph c. palais
//example 8.1
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
d=50//core daimeter in um
a=d/2//core radius in um
L1=1//coupling loss in dB case 1
L2=0.5//coupling loss in dB case 2
L3=0.1//coupling loss in dB case 3
//to find
eta1=10^(-L1/10)//coupling efficiency for L1
eta2=10^(-L2/10)//coupling efficiency for L2
eta3=10^(-L3/10)//coupling efficiency for L3
dby2a1=(1-eta1)*(%pi/4)//displacement by twice radius ratio d/2a for case 1
dby2a2=(1-eta2)*(%pi/4)//displacement by twice radius ratio d/2a for case 2
dby2a3=(1-eta3)*(%pi/4)//displacement by twice radius ratio d/2a for case 3
d1=(1-eta1)*(%pi*a/2)//axial displacement for coupling loss=1dB since d/2a<0.2
d2=(1-eta2)*(%pi*a/2)//axial displacement for coupling loss=0.5dB since d/2a<0.2
d3=(1-eta3)*(%pi*a/2)//axial displacement for coupling loss=0.1dB since d/2a<0.2
mprintf('Axial displacement for coupling loss=1dB with d/2a=%f is=%fum',dby2a1,d1)
mprintf('\nAxial displacement for coupling loss=0.5dB with d/2a=%f is=%fum',dby2a2,d2)
mprintf('\nAxial displacement for coupling loss=0.1dB with d/2a=%f is=%fum',dby2a3,d3)
