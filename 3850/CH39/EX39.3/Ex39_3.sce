
//To Find the Peak Value of Current and the Instantaneous Voltage of the source when the current is at its peak value

//Example 39.3

clear;

clc;

f=50;//Frequency of AC source in Hz

L=200*10^-3;//Self Inductance of Inductor in Henry

Xl=2*%pi*f*L;//Reactance of the Inductor in ohms

E0=210;//Peak EMF Value of AC source in Volts

i0=E0/Xl;//Peak Value of Current in Amperes

printf("Peak Value of current = %.1f A",i0);

i=i0;//Instantaneous Value of Current when current attains its peak value

phi=-%pi/2;//Phase Difference in Radians for a purely Inductive Circuit

t=(asin(i/i0)-phi)/(2*%pi*f);//Time at which current attains its peak value

E=E0*sin(2*%pi*f*t);//Instantaneous Voltage for a purely inductive circuit

printf("\n Instantaneous voltage at peak value of Current = %.0f V",E);
