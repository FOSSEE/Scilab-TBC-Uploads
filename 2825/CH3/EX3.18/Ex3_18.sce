//Ex3_18 Pg-192
clc

printf("(a) The two diodes are connected in series and hence the \n current I flows in D1 and D2. Obviously,it is in forward \n direction through D2 and in reverse direction through D1.\n Since D2 diode is forward biased,V2 will be very small and\n  hence V1=(5-V2) will be very much larger than Vt=0.026V.\n This means the current will be equal to reverse saturation \n  current I0. Now,we consider diode D2.We have  \n\n")
disp("      I = I0*(exp(V/Vt)-1)")
disp("Putting I=I0 and V=V2, we have")
disp("      I0 = I0*(exp(V2/Vt)-1)")
disp("      exp(V2/Vt)-1 = 1")
Vt=0.026 //threshold voltage
V2=Vt*log(2)
V=5 //supply voltage in V
V1=V-V2 //value in textbook incorrect
printf("\n V2 = %.3f V",V2)
printf("\n V2 = %.3f V\n ",V1)
disp("Effect of temperature : V2=Vt*ln(2) = kT*ln(2)")
disp("So V2 will increase with temperature ")
disp("(b) If Vz is 4.9V then D1 will breakdown. This means V1=4.9V")
Vz=4.9 //breakdown voltage
V2=V-Vz
disp("Now using I0=5*10^(-6)A and V2=0.1V,one obtains")
I0=5*10^(-6) //current in ampere
I=I0*(exp(V2/Vt)-1)
printf("\n Current I=%.0f microA",I*10^6)
