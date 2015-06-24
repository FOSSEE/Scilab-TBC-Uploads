clc;
//page no 582
//prob no. 16.7
//a helial antenna with 8 turns with freq=1.2GHz given
N=8;f=1.2*10^9;c=3*10^8;//Speed of light in m/s
//a)Determination of optimum diameter of antenna
wav=c/f;
D=wav/%pi;
disp('m',D,'a)1.The optimum diameter for antenna is');
S=wav/4;//Determination of spacing for the antenna
disp('m',S,'a)2.The spacing for the antenna');
L=N*S;//Determination of total length of an antenna\
disp('m',L,'a)3.The total length of an antenna is');
//b)Determination of antenna gain in dBi
G=(15*N*S*(%pi*D)^2)/(wav^3);
G_dBi=10*log10(G);//Converting in dBi
disp('dBi',G_dBi,'b)The antenna gain is');
//c)determination of beamwidth
theta=((52*wav)/(%pi*D))*sqrt(wav/(N*S));
disp('degree',theta,'The beamwidth is');