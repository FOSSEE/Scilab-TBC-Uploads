clc
disp("Example 7.41")
printf("\n")
disp("sketch the frequency spectrum")
printf("Given\n")
disp("carrier amplitude=10V,carrier frequency=10MHz,Modulating frequency=1Khz,MI=0.5")
Vc=10
fc=10^7
fm=10^3
ma=0.5
wc=2*%pi*fc
wm=2*%pi*fm
t=10^-7
v=Vc*(1+(ma*sin(wm*t)))*cos(wc*t)
Vs=(ma*Vc)/2
flsb=fc-fm
fusb=fc+fm
// take below values just for plotting graph with intial values
f1=9.9989*10^6
v1=0
f=[f1 flsb fc fusb]
a=[v1 Vs Vc Vs]
plot2d3(f,a)
xtitle("Frequency Spectrum")
xlabel("Frequency")
ylabel("Amplitude")