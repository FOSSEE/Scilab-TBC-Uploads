
                             // Examle 4.5

               // From the diagram (4.8)
               // Using thevenin's equivalent theorem

V1=50;                             // Voltage source V1
V2=10;                             // Voltage source V2
I1=(V1-V2)/(10+10+20);             // Current through the ckt ( when Current source is off )

i=1.5;                            // Current source i
I2=i*(10/(10+(10+20)));           // Current through the ckt ( when Current source is active )
I=I1+I2;                          // Addition of I1 & I2
Vth= I*20;                        // Thevenin's voltage at 20 Ohms R

Rth=(20*(10+10))/(20+(10+10));    // Thevenin's resistance 

Vl=Vth*(5/(5+10));                // Voltage across Rl
disp(' Voltage across olad resistor (Rl) = '+string(Vl)+' Volt');






                    // p 110         4.5
