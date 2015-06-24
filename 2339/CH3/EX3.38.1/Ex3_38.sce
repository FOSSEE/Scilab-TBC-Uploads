clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg Km=1;
P1=6;
V1=0.01;
V2=0.05;
P2=2;
W1=(((P1+P2)/2)*100)*(V2-V1);
printf('The Work done for first cycle: %3.1f kJ',W1);
printf('\n');
P3=P2;
V3=(P1*V1)/P3;
W2=P2*100*(V3-V2);
printf('The Work done for second cycle: %3.1f kJ',W2);
printf('\n');
W3=(P3*100*V3)*(log(V1/V3));
printf('The Work done for third cycle: %3.2f kJ',W3);
printf('\n');
W=W1+W2+W3;
printf('The net Work done: %3.2f kJ',W);
printf('\n');
Q=W;                //As process is cyclic
printf('The Heat Transfer: %3.2f kJ',Q);
printf('\n');
