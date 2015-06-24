//Scilab Code for Example 4.1 of Signals and systems by
//P.Ramakrishna Rao
//Plotting Magnitude and Phase spectrum
clc;
clear;
A=8;
Dt=0.005;
T1=4;
t=-T1/2:Dt:T1/2;
q=length(t)
for i=-(q/2)+1:q/2
    if i>-q/4 & i<q/4 then
    xt(i+(q/2))=A;
    else xt(i+(q/2))=0;
        end
end
Wmax = 2*%pi*1;        //Analog Frequency = 1Hz
K = 4;
k = 0:(K/1000):K;
W = k*Wmax/K;
xt = xt';
XW = xt* exp(-sqrt(-1)*t'*W) * Dt;
XW_Mag = real(XW);
W = [-mtlb_fliplr(W), W(2:1001)]; // Omega from -Wmax to Wmax
XW_Mag = [mtlb_fliplr(XW_Mag), XW_Mag(2:1001)];
[ XW_Phase ,db] = phasemag (XW);
XW_Phase =[-mtlb_fliplr(XW_Phase),XW_Phase(2:1001)];
// Plotting the Function
subplot(2,1,1);
a=gca();
a.data_bounds=[-4,0;4,2];
a.y_location="origin";
plot(t,xt);
xlabel('t in sec.');
title('Continous Time Signal x(t)');
// Plotting Magnitude Reponse of CTS
subplot(2,1,2);
a=gca();
a.y_location="origin";
plot(W/(2*%pi),XW_Mag);
xlabel('Frequency in Hz');
title('Continuous time Fourier Transform X(jW)');
// Plotting Phase Reponse of CTS
figure(1);
a = gca ();
a.y_location = "origin";
a.x_location = "origin";
plot (W/(2*%pi),-XW_Phase *%pi /180) ;
xlabel ( ' Frequency in Hz' );
ylabel ( '<X(jW) ' )
title ( ' Phase Response (CTFT) in Radians ' )
