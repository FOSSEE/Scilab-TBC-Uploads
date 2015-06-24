//Example 3.3 // no. of modes
clc;
clear;
close;
format('v',10)
disp("part (a)")
n1=1.5;//core refractive index
n2=1.48;//cladding refrative index
t=10.11;//thickness of guided layer in micro meter
h=1.55;//wavelength in µm
b1=((2*%pi*n1)/(h*10^-6));//phase propagation constant in m^-1
b2=((2*%pi*n2)/(h*10^-6));//phase propagation constant in m^-1
m=((2*%pi*t)/h)*(sqrt(n1^2-n2^2));//number of modes
disp(round(m/2),"number of modes are")
disp("part (b)")
n1=1.5;//core refractive index
n2=1.48;//cladding refrative index
t1=10.11;//thickness of guided layer in micro meter
t=t1/2;
h=1.55;//wavelength in µm
b1=((2*%pi*n1)/(h*10^-6));//phase propagation constant in m^-1
b2=((2*%pi*n2)/(h*10^-6));//phase propagation constant in m^-1
mo=(((2*%pi*t1)/h)*(sqrt(n1^2-n2^2)))/2;//number of modes
uma0=1.30644;// for m=0 from the curve
uma1=2.59574;// for m=1 from the curve
uma2=3.83747;// for m=2 from the curve
uma3=4.9063;// for m=3 from the curve
wma0=4.8263;// for m=0 from the curve
wma1=4.27342;// for m=1 from the curve
wma2=3.20529;// for m=2 from the curve
wma3=0.963466;// for m=3 from the curve
um0=uma0/(t*10^-6);//in m^-1
um1=uma1/(t*10^-6);//in m^-1
um2=uma2/(t*10^-6);//in m^-1
um3=uma3/(t*10^-6);//in m^-1
wm0=wma0/(t*10^-6);//in m^-1
wm1=wma1/(t*10^-6);//in m^-1
wm2=wma2/(t*10^-6);//in m^-1
wm3=wma3/(t*10^-6);//in m^-1
bm0=((wm0*t*10^-6)/mo)^2;//for m=0 
bm1=((wm1*t*10^-6)/mo)^2;//for m=1
bm2=((wm2*t*10^-6)/mo)^2;//for m=2 
bm3=((wm3*t*10^-6)/mo)^2;//for m=3
m0=sqrt((bm0*(b1^2-b2^2))+b2^2);//for m=0 in m^-1
m1=sqrt((bm1*(b1^2-b2^2))+b2^2);//for m=1 in m^-1
m2=sqrt((bm2*(b1^2-b2^2))+b2^2);//for m=2 in m^-1
m3=sqrt((bm3*(b1^2-b2^2))+b2^2);//for m=3 in m^-1
params = [" " "m" "um[m^-1]" "wm[m^-1]" "bm"  ];
m = ["0" "1" "2" "3"]';
um = ["um0" "um1" "um2" "um3"]';
wm  = string([22.41 11.77 33.41 4.24]');
bm = string([26 19 22 17]');
params = ["m" "um[m^-1]" "wm[m^-1]" "bm" "ßm[m^-1]" ];
city=string([0 1 2 3]');
towns = string([um0 um1 um2 um3]');
country = string([wm0 wm1 wm2 wm3]');
 pop  = string([bm0 bm1 bm2 bm3]');
 temp = string([m0 m1 m2 m3]');
 table = [params; [ city towns country pop temp ]]
 disp(table ,"constants are :")
