//ques-25.5
//Calculating rms velocity at 392 K
clc
C1=1.8*10^3;//rms velocity at 288 K (in m/s)
T1=273+15; T2=273+119;//temperature (in K)
C2=C1*sqrt(T2/T1);
printf("The rms velocity at 392 K is %d m/s.",C2);
