clc();
clear;

// To compute the temprature distribution
h=1;                                        // Heat transfer coefficient in Btu/hr-ft^2-degF
x=1;                                        // Assumed thickness in ft
k=1;                                        // Thermal conductivity in Btu/hr-ft-degF
N=h*x/k;
t0=600;
t4=200;
t1=[500 550 550 525 525 512.5 512.5 512.5 506.2 506.2 506.2 506.2 503.1 503.1];
t2=[450 450 450 450 425 425 425 412.5 412.5 412.5 406.3 406.3 406.3 403.1];
t3=[350 350 325 325 325 325 312.5 312.5 312.5 306.3 306.3 303.1 303.1 303.1];

// Assumed temperatures in degF for points 1 2 & 3 respectively
for i=1:14
th1(i)=t0+t2(i)-2*t1(i);
th2(i)=t1(i)+t3(i)-2*t2(i);
th3(i)=t2(i)+t4-2*t3(i);
printf("Assuming t1=%.1f degF  t2=%.1fdegF  t3=%.1fdegF \n th1=%.1fdegF  th2=%.1fdegF  th3=%.1fdegF \n \n",t1(i),t2(i),t3(i),th1(i),th2(i),th3(i));
end
printf("This way assumption must be continued till all sink strengths are zero");