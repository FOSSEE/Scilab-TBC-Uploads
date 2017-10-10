//ques-18.29
//Determining temperature at which water will boil when atmospheric pressure is 528mm Hg
clc
P1=528; P2=760;//pressure (in mm Hg)
H=545.5;//latent heat of vapourisation (in cal/g)
T2=273+100;//temperature (in K)
T1=1/((log10(P2/P1)*2.303*1.987)/(H*18)+(1/T2));
printf("The temperature required is %.0f K.",T1);
