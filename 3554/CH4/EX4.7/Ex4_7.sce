// Exa 4.7

clc;
clear all;
// Referring circuit given in fig. 4.7 on page no.81

S1=1000; // Sensitivity of meter 1 (Ohms/volt)
S2=20000;// Sensitivity of meter 2(Ohms/volt)
Rm1=200;// Meter resistance(Ohms)
Rm2=1500;// Meter resistance(Ohms)
V1=10; // Range of voltmeter 1(Volts)
V2=10;
Ra=25000; // in Ohms
Rb=5000;// in Ohms
V=30; // Applied Voltage(V)

//Solution

VRb= Rb/(Ra+Rb) * V; // Voltage across Rb
printf('The voltage across the resistance Rb, without either meter connected = %d V\n ',VRb);

// For meter 1
Rt1=S1* V1; // Total resistance of meter1

Req1= Rb*Rt1/(Rb+Rt1); // Total resistance across Rb
VRb1= Req1/(Req1+Ra) * V; // Voltage reading across Rb with meter1
printf('The voltage across Rb when meter 1 is used is = %.2f V \n',VRb1);
Err1=(VRb-VRb1)/VRb *100; // Voltmeter 1 error
printf(' Voltmeter 1  error in percentage = %.1f  \n ',Err1);

// For meter 2

Rt2=S2* V2; // Total resistance of meter 2

Req2= Rb*Rt2/(Rb+Rt2); // Total resistance across Rb
VRb2= Req2/(Req2+Ra) * V; // Voltage reading across Rb with meter2
printf('The voltage across Rb when meter 2 is used is = %.1f V \n',VRb2);

Err2=(VRb-VRb2)/VRb *100; // Voltmeter 2 error
printf(' Voltmeter 2  error in percentage = %d \n ',Err2);
