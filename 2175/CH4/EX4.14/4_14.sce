clc;
T2=90;//K
T3=40;//K
T1=15;//K
y=(T3-T1)/(T2-T3);

cp=1.005;
h3=40;
h1=15;
h2=90;
T0=288;//K
T3=313;//K
T1=288;//K
T2=363;//K
s3_s1=cp*log(T3/T1);
inc=cp*(h3-h1)-T0*s3_s1;

s2_s3=cp*log(T2/T3)
loss=0.5*[cp*(h2-h3)-T0*(s2_s3)]
e=inc/loss;
disp("effectiveness is:");
disp("%",e*100);//ans diff due to differance in value of logarithmic values
