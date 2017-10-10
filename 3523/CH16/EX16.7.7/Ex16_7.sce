clear all
clc
close

C1=0.125*10^-6;//in Farad
C2=1*10^-9;//in Farad
R1=360;//in ohms
R2=544;//in ohms
theta = sqrt(C1*C2*R1*R2);//in usec
n = 1/[1+(R1/R2)+(C2/C1)];
alpha = (R2*C1)/(2*theta*n);
printf("theta parameter of wave eq %f us \n",theta*10^6)
printf("n the parameter of circuit eq %f \n",n)
printf("alpha parameter of circuit eq %f \n",alpha)
T2 = 16.25*theta;//duration of lightning impulse pulse in us
T1 = T2/120;//duration of lightning impulse pulse in us
printf("duration of lightning impulse pulse %f us \n",T2*10^6)
printf("duration of lightning impulse pulse %f us \n",T1*10^6)
//answer in the book for T1 is wrong

T = T1/T2;
printf("generated lighting impulse is %f us \n",T)
alpha1 = [alpha-sqrt((alpha^2)-1)]/theta;//in us^-1
alpha2 = [alpha+sqrt((alpha^2)-1)]/theta;//in us^-1
printf("aplha1 parameter of wave eq is %f us^-1 \n",alpha1*10^-6)
printf("aplha1 parameter of wave eq is %f us^1 \n",alpha2*10^-6)

// Now eq of waveform of generated pulse is e(t)=60.2(e^-0.0088t - e^-4.62t)

