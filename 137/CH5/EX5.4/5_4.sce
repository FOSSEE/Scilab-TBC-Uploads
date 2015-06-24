clc;
//page 224
//problem 5.4
// Repeat example 5.3 with m(t) expanded by a factor of 2 i.e. if the period of m(t) is 4*10^-4
// The values of constsnts Kf and Kp are given as Kf= 2*pi*10^5 and Kp=5*pi .
// we know that time expansion by a factor 2 reduces the signal spectrum width by a factor 2
// Therefore bandwidth is half the previous bandwidth
B=7.5; // im KHz
// For FM:
//  Time expansion does not affect the peak amplitude so that mp=1.
mp=1;
// df=kf*mp/2*pi
Kf= 2*%pi*10^5; Kp=5*%pi;
df= (Kf*mp)/(2*%pi);// in Hz
df=df/10^3;// in KHz
Bfm=2*(df+B);
disp(+'KHz',Bfm,'Bfm in kHz is');
// For PM:
//mp is halved i.e. mp=10000
mp=10000;
// df=kp*mp/2*pi
df= (Kp*mp)/(2*%pi);// in Hz
df=df/10^3;// in KHz
Bpm=2*(df+B);
disp(+'KHz',Bpm,'Bpm in kHz is');
// Time expansion of m(t) has very little effect on the FM bandwidth, but it halves the PM bandwidth