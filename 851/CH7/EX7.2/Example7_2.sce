//clear//
//Caption:Signal Space diagram for coherent BPSK
//Example7.2: Sequence and Waveforms for MSK signal
//Table 7.2 signal space characterization of MSK
clear
clc;
close;
M =2;
Tb =1;
t1 = -Tb:0.01:Tb;
t2 = 0:0.01:2*Tb;
phi1 = cos(2*%pi*t1).* cos((%pi/(2*Tb))*t1);
phi2 = sin(2*%pi*t2).*sin((%pi/(2*Tb))*t2);
teta_0 = [0,%pi];
teta_tb = [%pi/2,-%pi/2];
S1 = [];
S2 = [];
for i = 1:M
  s1(i) = cos(teta_0(i));
  s2(i) = -sin(teta_tb(i));
  S1 = [S1 s1(i)*phi1];
  S2 = [S2 s2(1)*phi2];
end
for i = M:-1:1
  S1 = [S1 s1(i)*phi1];
  S2 = [S2 s2(2)*phi2];
end
Input_Sequence =[1,1,0,1,0,0,0];
S = [];
t = 0:0.01:1;
S = [S cos(0)*cos(2*%pi*t)-sin(%pi/2)*sin(2*%pi*t)];
S = [S cos(0)*cos(2*%pi*t)-sin(%pi/2)*sin(2*%pi*t)];
S = [S cos(%pi)*cos(2*%pi*t)-sin(%pi/2)*sin(2*%pi*t)];
S = [S cos(%pi)*cos(2*%pi*t)-sin(-%pi/2)*sin(2*%pi*t)];
S = [S cos(0)*cos(2*%pi*t)-sin(-%pi/2)*sin(2*%pi*t)];
S = [S cos(0)*cos(2*%pi*t)-sin(-%pi/2)*sin(2*%pi*t)];
S = [S cos(0)*cos(2*%pi*t)-sin(-%pi/2)*sin(2*%pi*t)];
y = [s1(1),s2(1);s1(2),s2(1);s1(2),s2(2);s1(1),s2(2)];
disp(y,'coordinates of message points')
figure
subplot(3,1,1)
a = gca();
a.x_location = "origin";
plot(S1)
title('Scaled time function s1*phi1(t)')
subplot(3,1,2)
a =gca();
a.x_location = "origin";
plot(S2)
title('Scaled time function s2*phi2(t)')
subplot(3,1,3)
a =gca();
a.x_location = "origin";
plot(S)
title('Obtained by adding s1*phi1(t)+s2*phi2(t) on a bit-by-bit basis')
