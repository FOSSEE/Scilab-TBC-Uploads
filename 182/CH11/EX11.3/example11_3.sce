// to find the output frequency of the circuit 11-8
// example 11-3 in page 326
clc;
// Data given
Vcc=15;// supply voltage=15 V
C1=0.1D-6;// capacitance in farad
R1=1e+3; R2=10e+3;// resistances in ohm
utp=3; ltp=-3;// upper and lower trigger points in volt 
//calculation
a=['For contact at top of R1' 'For R1 contact at 10% from bottom'];
V3=Vcc-1;// voltage in volt
dV=utp-ltp;//change in voltage in volt
V1=[V3 10*V3/100];// V1 when R1 is at the top and 10% from the bottom of R1 in volt
for n=1:2
    I2=V1(n)/R2;// current in ampere
    t=C1*dV/I2;// time in seconds
    f=1/(2*t);// frequency in hertz
    printf("%s,\nfrequency=%.2f Hz\n\n",a(n),f);
end
//result
//For contact at top of R1,
//frequency=1166.67 Hz
//For R1 contact at 10% from bottom,
//frequency=116.67 Hz