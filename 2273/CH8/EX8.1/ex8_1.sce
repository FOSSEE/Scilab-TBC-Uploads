//find voltage distribution across each insulator and string efficiency
clear;
clc;
//soltion
//given
k=1/6;//ratio
V=poly(0,"V");
V1=100/(k^3+6*k^2+10*k+4);
V2=(1+k)*V1;
V3=(1+3*k+k*k)*V1;
V4=(1+6*k+5*k^2+k^3)*V1;
printf("V1= %.2f percent of V\n V2= %.2f percent of V\n V3= %.2f percent of V\n V4= %.2f percent of V\n",V1,V2,V3,V4);
se=100*100/(4*V4);
printf("String efficiency= %.1f",se);
