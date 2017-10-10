
//To find the Impedance the Peak Current and Resonant Frequency of the LCR Series Circuit

//Example 39.4

clear;

clc;

L=100*10^-3;//Self Inductance of Inductor inHenry

C=100*10^-6;//Capacitance of Capacitor in Farads

R=120;//Resitance of Resistor in ohms

E0=30;//Peak Value of EMF  of AC source in Volts

w=100;//Angular Frequency of the AC source

X=(1/(w*C))-(w*L);//Reactance of the Circuit in ohms

Z=sqrt(R^2+X^2);//Total Impedance of the Circuit

printf("Impedance of the LCR Series Circuit = %.0f ohms",Z);

i0=E0/Z;//Peak Value of Current in Amperes

printf("\n Peak current Value of the LCR Series Circuit = %.1f A",i0);

f=(1/(2*%pi))*sqrt(1/(L*C));//Resonant Frequency of the Circuit

printf("\n Resonant Frequency of the LCR Series Circuit = %.0f Hz",f);
