//Chapter 14, Problem 4, Figure 14.5
clc;
funcprot(0)
deff('[freq]=function1(time)','freq=1/time')
deff('[ave]=function2(base,area)','ave=area/base')
deff('[rms]=function3(a1,a2,a3,a4)','rms=sqrt((a1^2+a2^2+a3^2+a4^2)/4)')
deff('[form]=function4(rms,ave)','form=rms/ave')
deff('[peak]=function5(max,rms)','peak=max/rms')

//from triangular waveform (Fig. 14.5(a))
t=20e-3;
b=t/2;
h=200;
v1=25;
v2=75;
v3=125;
v4=175;
f=function1(t);
a=(1/2)*b*h;
av=function2(b,a);
r=function3(v1,v2,v3,v4);
fr=function4(r,av);
p=function5(h,r);
disp("Triangular waveform")
printf("(i) Frequency = %d Hz \n\n",f);
printf("(ii) Average value of waveform = %d V\n\n",av);
printf("(iii) R.m.s value = %f V \n\n",r);
printf("(iv) Form factor = %f \n\n",fr);
printf("(v) peak factor = %f \n\n\n\n",p);

//from rectangular waveform (Fig. 14.5(b))
t1=16e-3;
b1=t1/2
i1=10;
f1=function1(t1);
a1=i1*b1;
av1=function2(b1,a1);
r1=function3(i1,i1,i1,i1);
fr1=function4(r1,av1);
p1=function5(i1,r1);
disp("Rectangular waveform")
printf("(i) Frequency = %f Hz \n\n",f1);
printf("(ii) Average value of waveform = %d A\n\n",av1);
printf("(iii) R.m.s value = %d A \n\n",r1);
printf("(iv) Form factor = %d \n\n",fr1);
printf("(v) peak factor = %d \n\n",p1);
