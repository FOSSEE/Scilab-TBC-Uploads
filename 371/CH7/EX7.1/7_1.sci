//Inverter Circuits//
//Example 7.1//
L=10*10^-3;//Inductance of series inverter circuit in Henry//
C=0.1*10^-6;//Capacitance of series inverter circuit in Farads//
R=400;//Load Resistance in Ohms//
Toff=0.2*10^-3;//Off time of Duty cycle in sec//
w=sqrt((1/(L*C))-(R^2/(4*L^2)));//Angular Frequency in rad/sec//
printf('value of w=%f',w);
F=w/(3.14+(w*Toff));//Output Frequency in Hertz//
printf('\nvalue of the Output Frequency=F=%fHertz',F);
T=1/F;//Time period of Output in sec//
AF=exp((-R/(2*L))*T);//Attenuation Factor//
printf('\nvalue of the Attenuation Factor=AF=%f',AF);