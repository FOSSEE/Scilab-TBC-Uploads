//To find dimensions of clutch plate
clc
//Given:
P=100 //kW
N=2400 //rpm
T=500*1000 //N-mm
p=0.07 //N/mm^2
mu=0.3
Ns=8 //Number of springs
k=40 //Stiffness, N/mm
n=2
//Solution:
//Calculating the inner radius of the friction plate
r2=(T/(n*mu*2*%pi*p*(1.25-1)*(1.25+1)/2))^(1/3) //mm
//Calculating the outer radius of the friction plate
r1=1.25*r2 //mm
//Calculating the total stiffness of the springs
s=k*Ns //N/mm
//Calculating the intensity of pressure
C=p*r2 //N/mm
//Calculating the axial force required to engage the clutch
W=2*%pi*C*(r1-r2) //N
//Calculating the initial compression in the springs
IC=W/s //Initial compression in the springs, mm
//Results:
printf("\n\n Outer radius of the friction plate, r1 = %.1f mm.\n",r1)
printf(" Inner radius of the friction plate, r2 = %d mm.\n",r2)
printf(" Initial compression in the springs = %.1f mm.\n\n",IC)