clc;
//page 222
//problem 5.3.a
// refer fig from page no. 212 Fig.5.4a
// The values of constsnts Kf and Kp are given as Kf= 2*pi*10^5 and Kp=5*pi .
// Here we are assuming the Bandwidth B of m(t) as the frequency of the third harmonic, i.e. 3(10^4/2)Hz= 15kHz
B=15;// in kHz
// For FM:
//  Here peak amplitude of m(t) is mp=1
mp=1;
// df=kf*mp/2*pi
Kf= 2*%pi*10^5; Kp=5*%pi;
df= (Kf*mp)/(2*%pi);// in Hz
df=df/10^3;// in KHz
Bfm=2*(df+B);
disp(+'KHz',Bfm,'Bfm in kHz is');
// For PM:
//Here peak amplitude of m(t)' is mp=20000
mp=20000;
// df=kp*mp/2*pi
df= (Kp*mp)/(2*%pi);// in Hz
df=df/10^3;// in KHz
Bpm=2*(df+B);
disp(+'KHz',Bpm,'Bpm in kHz is');