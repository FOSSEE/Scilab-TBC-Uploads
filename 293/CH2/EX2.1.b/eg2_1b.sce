V = 1; // voltage supply 
R1 = 10; // first resistance in ohms 
R2 = 5; //resistance of the second resistor 
Vr1 = V * (R1/(R1 + R2)); //voltage across R1
Vr2 = V - Vr1; //voltage across R2
Ir = Vr1/R1; //current flowing through R

disp(Vr1,"voltage across the first resistor (in volts)=")
disp(Vr2,"voltage across the second resistor (in volts)=")
disp(Ir,"current flowing through the resistor (in amps) =")