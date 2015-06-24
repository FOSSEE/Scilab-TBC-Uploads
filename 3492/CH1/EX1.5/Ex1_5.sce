clc
//Chapter1
//Ex_1.5
//Given
L=100*10^-6//in Henry
C=100 *10^-12 //in Farad
T=300 // in Kelvin
R=200*10^3 //in ohms
k=1.38*10^-23 //in J/K
fo=1/(2*%pi*sqrt(L*C))//resonant frequency
Q=2*%pi*fo*C*R//quality factor
B=fo/Q //Bandwidth of tuned RLC 
//Acc. to Johnson resistor noise equation
Vrms=sqrt(4*k*T*R*B) //in volts
Vrms=Vrms/10^-6 //in micro volts
disp(Vrms," Minimum rms radio signal that can be detected in micro volts is")

