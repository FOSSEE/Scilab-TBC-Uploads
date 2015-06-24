// To find the ammeter and ohmeter indication for the circuit 7-1(a)
// example 7-2 in page 166
clc;
//Data given
V=1000; S=10e+3; // voltmeter range and sensitivity in volt and ohm/volt
R=990;// the resistance measured
E=500;// supply voltage in volts
Ra=10;// ammeter resistance in ohm
//calculaTION
Rv=V*S;// voltmeter resistance
R1=(R*Rv)/(R+Rv);// as voltmeter is connected in parallel with the measured resistance, the equivalent resistance is the parallel combination of both resistancs
Ev=(E*R1)/(R1+Ra);// voltmeter reading using voltage divider formula
I=Ev/R1;// ammeter reading 
printf("voltmeter reading=%.0f V\nAmmeter reading=%.1f A\n",Ev,I);
//result
//voltmeter reading=495 V
//Ammeter reading=0.5 A 