//Chapter 14, Problem 10
clc;
Vm=75;                          //peak voltage
w=200*%pi;
phi=0.25;
Vpp=2*Vm;                       //peak to peak voltage
Vrms=0.707*Vm;                  //rms voltage
T=(2*%pi)/w;                    //time period
f=1/T;                          //frequency
angle=phi*(180/%pi);
printf("Comparing v=75 sin((200*pi*t) −0.25) with the general expression, we get\n");
printf("(a) Amplitude or peak value = %d V\n\n",Vm);
printf("(b) Peak-to-peak value = %d V\n\n",Vpp);
printf("(c) The r.m.s. value = %d V\n\n",Vrms);
printf("(d) The periodic time = %f sec\n\n",T);
printf("(e) Frequency f = %d Hz\n\n",f);
printf("(d) Phase angle = %f deg",angle);
