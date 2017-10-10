// Example no 6.4
// To design an RLC network that implements an IF quadrature FM detector 
// Page no. 273

clc;
clear all;
close;

// Given data
fc=10.7*10^6;                                               //Cut-off frequency in Hz
B=500*10^3;                                                 //Bandwidth in Hz
phi=5;                                                      //phase shift for good system in degree
Q=tand(phi)/((fc+B/2)/fc-fc/(fc+B/2));                     //Q-factor
L=10*10^(-6);                                              //Chosen value of inductor
R=Q*2*%pi*fc*L;                                            //Value of Resistor
c1=12.13*10^(-12);                                          //Chosen value of C1
c=(Q/(R*2*%pi*fc))-c1;                                     //Value of capacitor

// Displaying the result in command window
printf('\n Value of Resistor required for RLC circuit = %0.3f kohm',R*10^(-3));
printf('\n Value of Inductor required for RLC circuit = %0.0f microH',L*10^(6));
printf('\n Value of Capacitor required for RLC circuit = %0.0f pF',c*10^(12));

// Magnitude plot
f=0.95*10^7:0.05*10^7:1.2*10^7;                           // Frequency range for plotting in Hz
mgh=(2*%pi*f*R*c1)/sqrt(1+Q^2*((f^2-fc^2)/(f*fc))^2);     // Magnitude transfer function
subplot(211);
plot(f,mgh);
a=gca();
a.data_bounds=[0.95*10^7 0;1.2*10^7 2];                   // To see the vertical line hiddden by the y axis
xlabel("Frequency","color","blue");
ylabel("Magnitude","color","blue");
title("Magnitude response","fontsize","6","color","red");

// Phase plot
f=0.95*10^7                                              // Initial frequency for plotting
for i=1:6
    if f<1.25*10^7 then
        phH(i)=(%pi/2)+atan(Q*((f^2-fc^2)/(f*fc)));      // Phase transfer function
        f=f+0.05*10^7;
    end
end

f=0.95*10^7:0.05*10^7:1.2*10^7;
subplot(212);
plot(f,phH);
a=gca();
a.data_bounds=[0.95*10^7 1.2;1.2*10^7 2];              // To see the vertical line hiddden by the y axis
xlabel("Frequency","color","blue");
ylabel("Phase","color","blue");
title("Phase response","fontsize","10","color","red");
