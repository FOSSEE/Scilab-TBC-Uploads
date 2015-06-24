// Example 11.3: (a) Output voltage
//               (b) Input voltage
clc, clear
B1=36; // Fundamental output in volts
B2=7*B1/100; // Second-harmonic distortion in volts
Vs=0.028; // Input in volts
A=B1/Vs; // Gain

disp("Part (a)");
b=1.2/100; // Amount of feedback in volts
B1f=B1/(1+b*A); // Fundamental output with feedback in volts
B2f=B2/(1+b*A); // Second-harmonic distortion with feedback in volts
disp(B1f,"Fundamental output with feedback (V) =");
disp(B2f,"Second-harmonic distortion with feedback (V) =");

disp("Part (b)");
B1f=36; // Fundamental output with feedback in volts
B2f=1*B1f/100; // Second-harmonic distortion with feedback in volts
T=B2/B2f-1; // Return ratio
AF=A/(1+T); // Feedback gain
Vs=B1f/AF; // Input voltage in volts
disp(Vs,"Input voltage (V) =");