//Chapter 10
//Example 10.1
//page 374
//To calculate symmetrical components of line currents
clear;clc;
Ia=10*(cosd(30)+%i*sind(30));
Ib=15*(cosd(-60)+%i*sind(-60));
// from KCL Ia+Ib+Ic=0
Ic=-(Ia+Ib);
//defining alpha(a)
a=cosd(120)+(%i*sind(120));
Ip=[Ia;Ib;Ic];
A=[1 1 1;a^2 a 1;a a^2 1];
IA=inv(A)*Ip;
IB=diag([a^2,a,1])*IA;
IC=diag([a,a^2,1])*IA;

function [r,theta]=phasorform(x)
    r=abs(x);
    theta=atand(imag(x),real(x));
endfunction

[IAr,IAth]=phasorform(IA);
[IBr,IBth]=phasorform(IB);
[ICr,ICth]=phasorform(IC);

//to display the results of symettrical components of line currents

printf('\n\nIA1=%0.2f @ %d deg A',IAr(1,1),IAth(1,1));
printf('\nIA2=%0.2f @ %d deg A',IAr(2,1),IAth(2,1));
printf('\nIA0=%0.2f A',IAr(3,1));


printf('\n\nIB1=%0.2f @ %d deg A',IBr(1,1),IBth(1,1));
printf('\nIB2=%0.2f @ %d deg A',IBr(2,1),IBth(2,1));
printf('\nIB0=%0.2f A',IBr(3,1));


printf('\n\nIC1=%0.2f @ %d deg A',ICr(1,1),ICth(1,1));
printf('\nIC2=%0.2f @ %d deg A',ICr(2,1),ICth(2,1));
printf('\nIC0=%0.2f A',ICr(3,1));

//to calculate Delta currents

IAB=(Ia-Ib)/3;
IBC=(Ib-Ic)/3;
ICA=(Ic-Ia)/3;

//to get the results in phasor notation
[IABr,IABth]=phasorform(IAB);
[IBCr,IBCth]=phasorform(IBC);
[ICAr,ICAth]=phasorform(ICA);

printf('\n\nIAB=%0.2f @ %d deg A',IABr,IABth);
printf('\nIBC=%0.2f @ %d deg A',IBCr,IBCth);
printf('\nICA=%0.2f @ %d deg A',ICAr,ICAth);

//to calculte the symmetrical components of delta currents by reusing the variable Ip
Ip=[IAB;IBC;ICA];
IAB=inv(A)*Ip;
IBC=diag([a^2,a,1])*IAB;
ICA=diag([a,a^2,1])*IAB;

[IABr,IABth]=phasorform(IAB);
[IBCr,IBCth]=phasorform(IBC);
[ICAr,ICAth]=phasorform(ICA);

//to display the results of symmetrical components of Delta currents

printf('\n\nIAB1=%0.2f @ %d deg A',IABr(1,1),IABth(1,1));
printf('\nIAB2=%0.2f @ %d deg A',IABr(2,1),IABth(2,1));
printf('\nIAB0=%0.2f A',IABr(3,1));


printf('\n\nIBC1=%0.2f @ %d deg A',IBCr(1,1),IBCth(1,1));
printf('\nIBC2=%0.2f @ %d deg A',IBCr(2,1),IBCth(2,1));
printf('\nIBC0=%0.2f A',IBCr(3,1));


printf('\n\nICA1=%0.2f @ %d deg A',ICAr(1,1),ICAth(1,1));
printf('\nICA2=%0.2f @ %d deg A',ICAr(2,1),ICAth(2,1));
printf('\nICA0=%0.2f A\n\n',ICAr(3,1));

