clc;
clear;
printf("\t\t\tChapter4_example4\n\n\n");
hc=6;
D=0.105;
k=0.431;
c=2000;
rou=998;
Vs=%pi*D^3/6;
As=%pi*D^2;
// calculating Biot Number for lumped capacitance approach
Bi_lumped=hc*Vs/(k*As);
printf("\nThe Biot number is %.3f,",Bi_lumped);
alpha=k/(rou*c);
printf("\nThe value of diffusivity is %.2e sq.m/s",alpha);
Tc=20;
T_inf=23;
T_i=4;
if Bi_lumped<0.1 then
    n=0;
else if  Bi_lumped>0.1 then
        n=1;
    end
end
select n
case 0 then 
    disp('The Lumped capacity approach is applicable');
case 1 then
    printf("\n\nSince value of Biot number is greater than 0.1,\nLumped capacity approach would not give accurate results, so figure 4.8 is to be used\n");
    // calculating Biot Number for using figure 4.8
    Bi_figure=hc*D/(2*k);
    printf("\nThe Biot Number for using figure 4.8 is %.3f",Bi_figure);
    reciprocal_Bi=1/Bi_figure;
    dimensionless_temp=(Tc-T_inf)/(T_i-T_inf);
    printf("\nThe dimensionless temperature is %.3f",dimensionless_temp);
    Fo=1.05;//The corresponding value of Fourier Number from figure 4.8a
    t=(D/2)^2*Fo/alpha;
    printf("\nThe required time is %.2e s = %.1f hr",t,t/3600);
end
Bi2Fo=Bi_figure^2*Fo;
printf("\nBi^2Fo=%.1e",Bi2Fo);
Dimensionless_HeatFlow=0.7; // The corresponding dimensionless heat flow ratio from figure 4.8c
Q=Dimensionless_HeatFlow*rou*c*Vs*(T_i-T_inf);
printf("\nThe heat transferred is %.3e J",Q);
