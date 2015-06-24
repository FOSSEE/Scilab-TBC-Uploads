clear;
clc;
I_a=1;//supposition
a=60;
I_s1=2*sqrt(2)/%pi*I_a*sind(a);
I_s3=2*sqrt(2)/(3*%pi)*I_a*sind(3*a);
I_s5=2*sqrt(2)/(5*%pi)*I_a*sind(5*a);
per3=I_s3/I_s1*100;    printf("percent of 3rd harmonic current in fundamental=%.0f",per3);
per5=I_s5/I_s1*100;    printf("\npercent of 5th harmonic current in fundamental=%.0f",per5);
