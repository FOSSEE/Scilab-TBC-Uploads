// Calculate the inductance of a choke to enable the lamp

clc;
clear;

P=500; // Power Rating of a discharge lamp
I=4; // Current drawn by the lamp
w=2*%pi*50; // Angular frequency

Vdl=P/I; // Supply voltage for the proper working of the lamp
V=250; // AC supply voltage

//According the Voltage triangle

Vil=sqrt((V^2)-(Vdl^2)); // Voltage drop across inductor

Xl=Vil/I; //Reactance 
L=Xl/w; // Inductor

Prl=(I^2)*Xl; // Reactive power requirement of the coke

C=Prl/((V^2)*w); // Capacitor supplying the necessary reactive power

printf('The inductance that should be connected in series with the lamp to make it work = %g mH\n',L*1000)
printf('The capacitor that should be connected in paralle to make the power factor unity = %g mF \n',C*1000)


