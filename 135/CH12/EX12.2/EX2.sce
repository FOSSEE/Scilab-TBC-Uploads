// Example 12.2: Designing a Wein Bridge Oscillator
clc, clear
fo=2e3; // in hertz
R=10; // in kilo-ohms
C=1/(2*%pi*fo*R*1e3); // in farads
C=C*1e9; // in nano-farads
disp(R,"R1 (kΩ​) =");
disp(R,"R2 (kΩ​) =");
disp(2*R,"R3 (kΩ​) =");
disp(R,"R4 (kΩ​) =");
disp(C,"C1 (nF) =");
disp(C,"C2 (nF) =");