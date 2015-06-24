//to find the raise time of the displayed waveform
// example 9-7 in page 262
clc;
//Data given
Rs=3.3e+3; Ci=15D-12;//source resistance in ohm and input capacitance in farad
tri=[109e-9 327e-9];//input raise times in seconds for which trd is to be determined
//calculations
tuo=2.2*Rs*Ci;//tuo is the rise time in seconds imposed by the ossciloscope
for n=1:2
    trd=sqrt(tri(n)^2+tuo^2); // displayed raise time in seconds
    printf("the displayed raise time for input pulse raise time %d ns=%d ns\n",tri(n)*10^9,trd*10^9);
end
//result
//the displayed raise time for input pulse raise time 109 ns=154 ns
//the displayed raise time for input pulse raise time 327 ns=344 ns