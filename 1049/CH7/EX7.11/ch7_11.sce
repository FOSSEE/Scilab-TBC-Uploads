clear;
clc;
R=1;
L=.005;
T_a=L/R;
T=2000*10^-6;
E=24;
V_s=220;
T_on=600*10^-6;
a=T_on/T;
a1=(T_a/T)*log(1+(E/V_s)*((exp(T/T_a))-1));
if(a1<a)
    disp("load current in continuous");
else
    disp("load current in discont.");
end
I_o=(a*V_s-E)/R;    printf("avg o/p current=%.0f A",I_o);
I_mx=(V_s/R)*((1-exp(-T_on/T_a))/(1-exp(-T/T_a)))-E/R;    printf("\nmax value of steady current=%.2f A",I_mx);
I_mn=(V_s/R)*((exp(T_on/T_a)-1)/(exp(T/T_a)-1))-E/R;    printf("\nmin value of steady current=%.3f A",I_mn);

f=1/T;
w=2*%pi*f;
I1=(2*V_s/(sqrt(2)*%pi)*sind(180*a))/(sqrt(R^2+(w*L)^2));    printf("\nfirst harmonic current=%.4f A",I1);
I2=(2*V_s/(2*sqrt(2)*%pi)*sind(2*180*a))/(sqrt(R^2+(w*L*2)^2));    printf("\nsecond harmonic current=%.4f A",I2);
I3=(2*V_s/(3*sqrt(2)*%pi)*sind(3*180*a))/(sqrt(R^2+(w*L*3)^2));    printf("\nthird harmonic current=%.5f A",I3);

I_TAV=a*(V_s-E)/R-L*(I_mx-I_mn)/(R*T);    printf("\navg supply current=%.4f A",I_TAV);

P1=I_TAV*V_s;
printf("\ni/p power=%.2f W",P1);
P2=E*I_o;
printf("\npower absorbed by load emf=%.0f W",P2);
printf("\npower loss in resistor=%.2f W",P1-P2);
I_or=sqrt(I_o^2+I1^2+I2^2+I3^2);
printf("\nrms value of load current=%.3f A",I_or);