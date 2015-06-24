

                      // Example  2.11

            // To convet Pi- Section in to T- Section.
            // We have to Find Ra, Rb & Rc for T-Section
R2=9;       // Resistance of 9 Ohms
R3=6;       // Resistance of 6 Ohms
R1=3;       // Resistance of 3 Ohms

Ra=(R2*R3)/(R1+R2+R3);
disp(' Value of Ra is = '+string(Ra)+' Ohm');
Rb=(R1*R3)/(R1+R2+R3);
disp(' Value of Rc is = '+string(Rb)+' Ohm');
Rc=(R2*R1)/(R1+R2+R3);
disp(' Value of Rc is = '+string(Rc)+' Ohm');



           // p 26      2.11
