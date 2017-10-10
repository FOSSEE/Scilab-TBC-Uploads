// Exa 4.8

clc;
clear all;

// Given data

Ra= 45; // in k Ohms
Rb=5; // in k Ohms
V=50; // Supplied Voltage(V)
S=20; // sensitivity in k Ohms/V

// Solution

VRb=Rb/(Ra+Rb) * V;
printf('The voltage drop across Rb without the voltmeter connected is = %d V\n',VRb);

// On the 5V range
Range1 = 5; // Volts

Rm1=S*Range1;// k Ohms
Req1=Rm1*Rb/(Rm1+Rb);  // k Ohms
VRb1=Req1/(Req1+Ra) *V; // Voltage across Rb on 5V range
printf(' The voltmeter reading on 5V range is = %.3f V\n',VRb1);
Err1=(VRb-VRb1)/VRb * 100;
printf(' Percentage error on 5V range in percentage = %.2f \n',Err1);

// On 10V range

Range2 = 10; // Volts

Rm2=S*Range2;// k Ohms
Req2=Rm2*Rb/(Rm2+Rb);  // k Ohms
VRb2=Req2/(Req2+Ra) *V; // Voltage across Rb on 10V range
printf(' The voltmeter reading on 10V range is = %.3f V\n',VRb2);
Err2=(VRb-VRb2)/VRb * 100;
printf(' Percentage error on 10V range in percentage = %.3f \n',Err2);

// On 30V range

Range3 = 30; // Volts

Rm3=S*Range3;// k Ohms
Req3=Rm3*Rb/(Rm3+Rb);  // k Ohms
VRb3=Req3/(Req3+Ra) *V; // Voltage across Rb on 30V range
printf(' The voltmeter reading on 30V range is = %.3f V \n',VRb3);
Err3=(VRb-VRb3)/VRb * 100;
printf(' Percentage error on 30V range in percentage = %.1f \n',round(Err3));

disp(" In this example, the 30V range introduces the least error due to loading. However, the voltage being measured causes only a 10% full scale deflection, whereas on the 10V range the applied voltage causes approximately a one third of the fullscale deflection with less than 3% error.");
//The answers vary due to round off error
