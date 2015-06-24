clear;
clc
d=5;c=3*(10^8);
lo=1.706*d;
f=c/lo;
ff=f/(10^7);
printf("(i)Cutoff frequency for TE11 = %f GHz\n",round(ff*100)/100);
l=1.306*d;
fc=c/l;
ffc=fc/(10^7);
printf("(ii)Cutoff frequency for TE01 = %f GHz",round(ffc*10)/10);
