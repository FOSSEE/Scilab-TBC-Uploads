// Example 3.7 : Percentage change in regulated voltage
V_DD=10; // (V)
V_D=0.7*3; // string of 3 diodes provide this constant voltage
R=1*10^3;
I_D=(V_DD-V_D)/R;
n=2;
V_T= 25*10^-3; // (V)
r_d=n*V_T/I_D; // incremental resistance 
r=3*r_d; // total incremental resistance
deltav_O=2*r/(r+R); // deltav is peak to peak change in output voltage
disp(deltav_O,"Percentage change (V) in regulated voltage caused by 10% change in power supply")
I=2.1*10^-3; // The current drawn from the diode string
deltav_O=-I*r; // Decrease in voltage across diode string
disp(deltav_O,"Decrease in voltage across diode string (V)")