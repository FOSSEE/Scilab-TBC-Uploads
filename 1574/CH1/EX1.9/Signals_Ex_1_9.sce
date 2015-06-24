clc; clear;close;
//Chapter1: Signals
//Example 1.9a,page no12
//Given:
// Analog Signal
A =1; // Amplitude
Dt = 0.005;
t = 0: Dt :10;
xt = exp(-A*t);
// Continuous time Fourier Transform
Wmax =2*%pi*1; // Analog Frequency = 1Hz
K = 4;
k = 0:(K/1000):K;
W = k* Wmax /K;
XW = xt*exp(-sqrt(-1)*t'*W)*Dt
XW_Mag =abs(XW);
W = [-mtlb_fliplr(W),W(2:1001)]; // Omega from -Wmax to Wmax
XW_Mag=[mtlb_fliplr(XW_Mag ),XW_Mag(2:1001)];
[XW_Phase ,db] = phasemag (XW);
XW_Phase = [-mtlb_fliplr( XW_Phase ),XW_Phase(2:1001)];
// Plotting Continuous Time Signal
figure
a=gca();
a.y_location = "origin";
plot(t,xt);
xlabel( 't in sec .');
ylabel(' x(t) ')
title(' Continuous Time Signal ' )
figure
// Plotting Magnitude Response of CTS
subplot (2 ,2 ,1);
a = gca ();
a.y_location = "origin";
plot2d(W, XW_Mag,style=5 );
xlabel ( ' Frequency in Radians / Seconds---> W' );
ylabel ( ' abs (X(jW) ) ' )
title ( 'Magnitude Response (CTFT) ' )
// Plotting Phase Reponse of CTS
subplot (2 ,2 ,2);
a =gca();
a.y_location="origin";
a.x_location="origin";
plot2d(W, XW_Phase *%pi/180,style=3);
xlabel(' Frequency in Radians / Seconds---> W');
ylabel('<X(jW) ')
title(' Phase Response (CTFT)in Radians' )
mprintf('|F(w)|= 1/sqrt(a^2+w^2) and\n Theta(w)=-atan(w/a)')

//Chapter1: Signals
//Example 1.9b,page no12
//Given:
// Analog Signal


A=1;// Amplitude
Dt=0.005;
t1=-4.5:Dt:4.5;
xt1=exp(-A*abs(t1));
// Continuous time Fourier Transform
Wmax1 =2*%pi*1;// Analog Frequency = 1Hz
K=4;
k=0:(K/1000):K;
W1=k*Wmax1/K;
XW1=xt1*exp(-sqrt(-1)*t1'*W1)*Dt;
XW1=real(XW1);
W1=[-mtlb_fliplr(W1), W1(2:1001) ]; // Omega from -Wmax to Wmax
XW1=[ mtlb_fliplr(XW1), XW1(2:1001) ];
//subplot(1 ,1 ,1)
subplot(2 ,2 ,3);
b=gca();
b.y_location = "origin";
plot2d(t,xt,3);
xlabel('t in sec.');
ylabel('x(t)')
title(' Continuous Time Signal')
subplot(2 ,2 ,4);
b =gca();
b.y_location = "origin";
plot2d(W1,XW1,5);
xlabel('Frequency in Radians / Seconds W');
ylabel('X(jW)')
title('Continuous time Fourier Transform ')

mprintf('|F(w)|= 2*a/sqrt(a^2+w^2) and\n Theta(w)=0')
