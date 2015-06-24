clc ;
close ;
// Analog S i g n a l
A =1; // Ampl i tude
Dt = 0.005;
t = 0: Dt :10;
xt = exp(-A*t);
Wmax = 2* %pi *1; // Analog Fr equency = 1Hz
K = 4;
k = 0:( K /1000) :K;
W = k* Wmax /K;
XW = xt* exp (- sqrt ( -1)*t'*W) * Dt;
XW_Mag = abs(XW);
W = [-mtlb_fliplr(W),W(2:1001)]; // Omega f rom 􀀀 Wmax to Wmax
XW_Mag = [mtlb_fliplr(XW_Mag),XW_Mag(2:1001)];
[ XW_Phase ,db] = phasemag (XW);
XW_Phase =[-mtlb_fliplr(XW_Phase),XW_Phase(2:1001)];
//Plotting Continuous Time Signal
figure
a = gca ();
a.y_location ="origin";
plot (t,xt);
xlabel ( ' t in sec. ' );
ylabel ( ' x ( t ) ' )
title ( ' Continuous Time Signal ' )
figure
// Pl o t t i n g Magni tude Re spons e o f CTS
subplot (2 ,1 ,1);
a = gca ();
a.y_location ="origin";
plot (W, XW_Mag );
xlabel ( ' Fr equency i n Radians / Seconds􀀀􀀀􀀀> W' );
ylabel ( ' abs (X(jW) ) ' )
title ( 'Magni tude Re spons e (CTFT) ' )
// Pl o t t i n g Phase Reponse o f CTS
subplot (2 ,1 ,2);
a = gca ();
a.y_location = "origin";
a.x_location = "origin";
plot (W, XW_Phase *%pi /180) ;
xlabel ( ' Fr equency in Radians / Seconds􀀀􀀀􀀀> W' );
ylabel ( '<X(jW) ' )
title ( ' Phase Re spons e (CTFT) i n Radians ' )