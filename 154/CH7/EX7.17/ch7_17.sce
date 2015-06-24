clc
disp("Example 7.17")
printf("\n")

printf("Given")
disp("Capacitance is 100nF")
disp("The voltage across capacitor increases linearly from 0 to 10V")
C=100*10^-9;
//From figure 7.10(a)
disp("a)")
//At t=T voltage across capacitor =10V
vc=10;
Q=C*vc;
printf("Charge across capacitor is %fC\n",Q)
disp("b)")
//The waveform shown in fig 7.10(a) can be written as
disp("0                 t<0")
disp("I0=10^-6/T        0<t<T")
disp("0                 t>T")


//For T=1s;
T=1;
I0=10^-6/T;
printf("I0(1s)=%fA\n",I0);

//For T=1ms;
T=1*10^-3;
I0=10^-6/T;
printf("I0(1ms)=%0.3fA\n",I0);

//For T=1us;
T=1*10^-6;
I0=10^-6/T;
printf("I0(1us)=%dA",I0);




