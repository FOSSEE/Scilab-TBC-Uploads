// Exa 1.3a

clc;
clear all;

Sv=1000; //voltmeter sensitivity(ohm/V)
Vt=80; //Voltage across unknown resistance (V)
It=10; //Current through unknown resistance (mA)
Scale=150; //Volts

//solution

//Neglecting milliammeter resistance
Rt=Vt/It; //Total circuit resistance(K  ohm)
Rv=Sv*Scale/1000; //Voltmeter resistance(K ohm/V)
Rx=Rt*Rv/(Rv-Rt); //actual value of unknown resistance(K ohm)
err=(Rx-Rt)/Rx *100;
printf('Apparent value of resistance = %d K ohm \n Actual value of resistance = %.2f K ohm \n Percentage error = %.1f percent \n',Rt,Rx,err);
disp("");

// Exa 1.3b

Sv=1000; //voltmeter sensitivity(ohm/V)
Vt=30; //Voltage across unknown resistance (V)
It=600; //Current through unknown resistance (mA)
Scale=150; //Volts

//solution

//Neglecting milliammeter resistance
Rt=Vt/(It*10^-3); //Total circuit resistance(ohm)
Rv=Sv*Scale; //Voltmeter resistance(ohm/V)
Rx=Rt*Rv/(Rv-Rt); //actual value of unknown resistance(ohm)
err=(Rx-Rt)/Rx *100;
printf('Apparent value of resistance = %d ohm \n Actual value of resistance = %.3f ohm \n Percentage error = %.3f \n',Rt,Rx,err);
disp("In Example1.3a, a well calibrated voltmeter may give a misleading resistance when connected across two points in a high resistance circuit.")
disp("The same voltmeter, when connected in a low resistance circuit(Examole 1.3b) may give a more dependable reading. This shows that voltmeters have a loading effect in the circuit during measurement.");
// In the 1.3b example, the answer mentioned in the textbook for Rx and percent error is isncorrect.

