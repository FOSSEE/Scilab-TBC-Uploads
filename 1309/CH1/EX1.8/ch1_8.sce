clear;
clc;
printf("\t\t\tchapter1_example8\n\n\n");
// determination of surface temperature
k=0.604; // [BTU/(hr.ft.degree Rankine)]
hc=3; // average value for natural convection in BTU/(hr.ft^2.degree Rankine)
ew=0.93;
f_wr=1; // shape factor
sigma= 0.1714*10^(-8) // BTU/(hr.ft^2.degree Rankine).
L=4/12; // length in ft
T1=80+460; // temperature of side-walk in degree Rankine
T_inf=20+460; // temperature of ambient air in degree Rankine
T_r=0; // assuming space temperature to be 0 degree Rankine
// LHS of the form a*Tw+b*Tw^4=c
a=((k/L)+hc);
b=(sigma*ew*f_wr);
c=(k*T1/L)+(hc*T_inf)+(sigma*f_wr*ew*T_r^4);
printf("\nRHS=%d",c);
    Tw=[470;480;490;485;484.5];
for i=1:5
    LHS(i)=a*Tw(i)+b*Tw(i)^4;
end
printf("\nSolving by trial and error yields the following, where LHS is the left-hand side of the equation");
printf("\n\tTw\tLHS");
for i=1:5
    printf("\n\t%.1f\t%d",Tw(i),LHS(i));
end
printf("\nThe Surface temperature is %.1f degree R = %.1f degree F",Tw(5),Tw(i)-460);
