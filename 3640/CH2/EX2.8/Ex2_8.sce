clc
VLB=2400 //line to base voltage in volts
Ix=2005 //current in amperes
xda=VLB/(sqrt(3)*Ix)
mprintf("xda=%fΩ\n",xda)//ans may vary due to roundoff error
Ifv=116 //current in amperes
ma1=VLB/(sqrt(3)*Ifv)//equal to ma` in textbook
mprintf("má=V1B/Ifv=%fΩ\n",ma1)//ans may vary due to roundoff error
//from ex 2_7
V1=VLB/sqrt(3)  //reference phasor in volts 
kVAB=9375 //rated kVA
I1B=(kVAB*1000)/(sqrt(3)*VLB)//current in amperes
pf=0.8 //power factor
I1=I1B*exp((-1)*%i*(acos(pf)))//current in amperes
Ef=V1+%i*I1*xda
disp('Ef='+string(Ef)+'V')//ans may vary due to roundoff error
mprintf("If=|Ef|/má=%fA\n",abs(Ef)/ma1)//ans may vary due to roundoff error
Voc=2960 //line to line volatge in Volts
mprintf("V1oc=%fV\n",Voc/sqrt(3))//ans may vary due to roundoff error
If=240 //current in amperes
Efmax=ma1*If
mprintf("Efmax=%dV\n",Efmax)//ans in textbook is wrong
I1max=(Efmax-V1)/xda //ans in textbook is wrong
mprintf("I1max=%fA\n",I1max)//ans may vary due to roundoff error
mprintf("Qmax=%fMVAR",sqrt(3)*VLB*I1max*(10^-6))//ans may vary due to roundoff error