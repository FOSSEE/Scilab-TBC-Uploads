clc
//initialization of variables
clear
wb=10 //cm
wh=20 //cm
sb=0.5 //cm
sh=10 //cm
s=6 //m
fs=1650 //kg/cm^2
fw=150 //kg/cm^2
Es=2*10^6 //kg/cm^2
Ew=12*10^4 //kg/cm^2

//calculations
// Method 1
as=2*fs/(21*Es)
aw=2*fw/(20*Ew)
a=min(as,aw)
ss=a*Ew*wh/2
//Moment resistance of steel portion
F=(fs+1573)/2*sb*sh
k=sb/3*(fs+2*1573)/(fs+1573)
Ms=2*F*(10.5-k)
//Moment resistance of wooden portion
F=ss*wb*wb/2
Mw=2*(F*(wb-wb/3))
M=Ms+Mw
//Total udl supported
W=M*8/(s*100)

//Results
printf('Using method 1')
printf('\n W = %d kg',W)

//Method 2
nE=Es/Ew
nf=fs/fw
Is=2*(0+sb*sh*10.25^2)
Iw=0.6*wh^3/12
I=Is+Iw
W=fs*I*8/(s*100*10.5)

//Results
printf('\n Using method 2')
printf('\n W = %d kg',W)
