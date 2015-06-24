clc;
clear;
printf("\t\t\tChapter4_example1\n\n\n");
// determination of response time
k=12; // thermal conductivity in BTU/(hr.ft.degree Rankine) 
c=0.1; // specific heat in BTU/(lbm.degree Rankine) 
D=0.025/12; // diameter in ft
density=525; // density in lbm/cu.ft
hc=80; // convective coefficient in BTU/(hr. sq.ft. degree Rankine)
T_i=65; // intial temperature in degree fahrenheit
T_inf=140; // fluid temperature in degree fahrenheit
As=3.14*D^2; // surface area in sq.ft
Vs=3.14*D^3/6; // volume in cu.ft
reciprocal_timeconstant=(hc*As)/(density*Vs*c);
printf("\nThe reciprocal of time constant is %.1f /hr",reciprocal_timeconstant);
// selecting T=139 degree fahrenheit as T=140 gives an infinite time through the equation (T-T_inf)/(T_i-T_inf)=exp(-hc*As/density*Vs*c)t
T=139;
t=log((T-T_inf)/(T_i-T_inf))/(-reciprocal_timeconstant);
printf('\n\nThe response time of the junction is %.1f s",t*3600);
