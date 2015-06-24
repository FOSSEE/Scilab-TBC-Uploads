//chapter 17
//example 17.1
//page 716
printf("\n")
printf("given")
rs=600;R1=12*10^3;Rl=100*10^3;C1=.013*10^-6;
disp("when Rl is not connected")
fc=1/(2*3.14*R1*C1)
disp(" when Rl is connected")
fc=1/(2*3.14*((R1*Rl)/(R1+Rl))*C1)
Attn=3//at fc attenuation is =3dB
falloffrate=6
disp("attenuation at 2fc")
Attn=3+6;
printf("attenuation at 2fc is %ddB\n",Attn)
Attn=3+6+6;
printf(" attenuation at 4fc is %ddB\n",Attn)