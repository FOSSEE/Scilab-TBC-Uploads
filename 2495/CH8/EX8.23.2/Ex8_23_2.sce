clear
clc
E1=-0.74;//in V
E2=-0.40;//in V
E3=-0.91;//in V
n1=3;//
n2=1;//
n3=6;//
n=2;//
E=((n1*E1)-(n2*E2))/n;//in V
printf('E=%.2f V',E)
E=E2-E1;//in V
DelG1=n1*E;//
printf('\nDelG1=%.2f V',DelG1)
E=E1-E3;//in V
DelG2=n3*E;//
printf('\nDelG2=%.2f V',DelG2)
E=E2-E3;//in V
DelG3=n*E;//
printf('\nDelG3=%.2f V',DelG3)
RT_F=0.05913;//in V
Keq=10^(DelG1/RT_F);//
printf('\nKeq=%.2f*10^17',Keq/10^17)

//page 540
