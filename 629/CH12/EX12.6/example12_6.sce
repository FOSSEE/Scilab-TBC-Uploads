clear
clc
//Example 12.6 ENTROPY INCREASE ACROSS SHOCK WAVE
//To find Approx Value
function [A]= approx (V,n)
    A= round(V*10^n)/10^n; //V-Value, n-to what place
    funcprot (0)
endfunction
k=1.4;
M1=1.5;
//Downstream Mach number
M2=approx(sqrt(((k-1)*M1^2+2)/(2*k*M1^2-(k-1))),3)
//Pressure ratio, (p21=p2/p1)
p21=approx([(1+k*M1^2)/(1+k*M2^2)],2)
//Temperature ratio, (T21=T2/T1)
T21=approx((1+[(k-1)/2]*M1^2)/(1+[(k-1)/2]*M2^2),2)
R=287; //[J/kg.K]
//Entropy change
del_s=R*log((T21^(k/(k-1))/p21)) //[J/kg.K]
printf("\n The change in entropy across the wave = %.1f J/kg.K.\n",del_s)