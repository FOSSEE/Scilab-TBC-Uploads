clc;
//e.g 3.10
ND=2*10**14;
NA=3*10**14;
ni=2.3*10**19;
n=(ni^2)/NA;
disp('electrons/cm^3',n*1,"n=");
p=(ni^2)/ND;
disp('holes/cm^3',p*1,"p=");
