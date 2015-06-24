//Chapter 10
//Sketch the output Waveform 
//page no.  370
//Example10_8
//Figure 10.24a
//Given
clc;
clear;
Ri=250;           //in Ohm
Ci=0.5*10^-6;           //in farad
Rf=40000;           //in Ohm
Cf=2*10^-9;           //in farad
fhf=1/(2*%pi*Rf*Cf);
fh_in=1/(2*%pi*Ri*Ci);
printf("\n Fhigh(f dbk)=%.0f Hz",fhf);
printf("\n Fhigh(in)=%.0f Hz",fh_in);
//

S=10;           //in V/S
step=1;
disp(S,"For slope")
t=0:step:1;
Vin=10*t;
dy=diff(S*t/step); //approximate differentiation of sine function
Vout=-Rf*Ci*dy;
printf("\n Vout(t) = %.1f V",Vout);
//
Slope=-4/0.2;           //in V/S
step=1;
disp(Slope,"For slope")
t=0:step:1;
Vin=10*t;
dy=diff(Slope*t/step); //approximate differentiation of sine function
Vout2=-Rf*Ci*dy;
printf("\n Vout(t) = %.1f V",Vout2);
//graph
t=(0:0.0001:1.5);
V=Vout*ones(0:0.0001:.2);
V=[V zeros(.2+.0001:0.0001:.5-.0001)];
V=[V Vout2*ones(.5:0.0001:.7)];
V=[V zeros(.7+.0001:0.0001:1-.0001)];
V=[V Vout*ones(1:0.0001:1.2)];
V=[V zeros(1.2+.0001:.0001:1.5)]
clf;
plot(t,V)

xtitle('Differentiator output','$t$',"$Voltage$")
