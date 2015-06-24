//Example 1.16

clear;

clc;

//Part(I)
//This part of the program includes the plotting of the input wave (triangular wave). To plot the wave we have divided the time period(assuming T=2) into 3 time intervals t1, t2, t3 and then create voltage equation for each using the given conditions.

VCC=13;

VEE=-13;

A=-2;//Gain

t1=[0:10^(-4):0.5];

t2=[0.5:10^(-4):1.5];

t3=[1.5:10^(-4):2.5];

vt1=20*t1;

vt2=20*(1-t2);

vt3=20*(t3-2);

subplot(131);

title("                                                                                                                                     Inverting Amplifier driven into saturation waveforms ","fontsize",6);

subplot(334);

plot(t1,vt1);

plot(t2,vt2);

plot(t3,vt3);

xlabel("Time(t)","fontsize",3);

ylabel("Input Voltage(Vin)","fontsize",3);

title("Vin vs t","fontsize",4);

//Part(II)
//In this part we have plotted vo by using the conditions vo=-2vI for -6.5V<vI<6.5V, otherwise vo=-13.Again we have divided the time period into 5 parts to1, to2, to3, to1i, to2i depending upon the response in each interval.

vIbor=VCC/2;

to1min=0;

to1max=6.5/20;

to2min=1-(6.5/20);

to2max=1+(6.5/20);

to3min=2-(6.5/20);

to3max=2+(6.5/20);

to1=[to1min:10^(-4):to1max];

to2=[to2min:10^(-4):to2max];

to3=[to3min:10^(-4):to3max];

to1imin=to1max;

to1imax=to2min;

to2imin=to2max;

to2imax=to3min;

to1i=[to1imin:10^(-4):to1imax];

to2i=[to2imin:10^(-4):to2imax];

vo1=-13*(to1-to1min)/(to1max-to1min);

vo1i=-13;

vo2=(((13+13)/(to2max-to2min))*(to2-to2min))-13;

vo2i=13;

vo3=(((13+13)/(to3min-to3max))*(to3-to3max))-13;

subplot(335);

plot(to1,vo1);

plot(to1i,vo1i);

plot(to2,vo2);

plot(to2i,vo2i);

plot(to3,vo3);

ylabel("Output Voltage(Vout)","fontsize",3);

xlabel("Time(t)","fontsize",3);

title("Vout vs t","fontsize",4);

//Part(III)
//In this part we will plot vN for which we have divided the time period into 7 time intervals tNi1, tNi2, tNi3, tN11,  tN12, tN21, tN22 depending upon the response in each cycle voltage equation is obtained and plotted.For -6.5<vI<6.5 vN=0 and when vI will peak at 10V vN will peak at 2.33 and for vI<6-.5 and vI>6.5, circuit behaviour is symmetric.

vIbor=VCC/2;

tNi1min=0;

tNi1max=6.5/20;

tNi2min=1-(6.5/20);

tNi2max=1+(6.5/20);

tNi3min=2-(6.5/20);

tNi3max=2+(6.5/20);

tNi1=[tNi1min:10^(-4):tNi1max];

tNi2=[tNi2min:10^(-4):tNi2max];

tNi3=[tNi3min:10^(-4):tNi3max];

tN11min=tNi1max;

tN11max=(tNi2min+tNi1max)/2;

tN12min=tN11max;

tN12max=tNi2min;

tN21min=tNi2max;

tN21max=(tNi2max+tNi3min)/2;

tN22min=tN21max;

tN22max=tNi3min;

tN11=[tN11min:10^(-4):tN11max];

tN12=[tN12min:10^(-4):tN12max];

tN21=[tN21min:10^(-4):tN21max];

tN22=[tN22min:10^(-4):tN22max];

vNi1=0;

vN11=(2.33/(tN11max-tN11min))*(tN11-tN11min);

vN12=-(2.33/(tN12max-tN12min))*(tN12-tN12max);

vNi2=0;

vN21=-(2.33/(tN21max-tN21min))*(tN21-tN21min);

vN22=(2.33/(tN22max-tN22min))*(tN22-tN22max);

vNi3=0;

subplot(336);

plot(tNi1,vNi1);

plot(tN11,vN11);

plot(tN12,vN12);

plot(tNi2,vNi2);

plot(tN21,vN21);

plot(tN22,vN22);

plot(tNi3,vNi3);

xlabel("Time(t)","fontsize",3);

ylabel("Vn","fontsize",3);

title("Vn vs t","fontsize",4);