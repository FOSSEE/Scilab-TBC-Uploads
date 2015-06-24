


                      // Example  5.2

l=4;               // Layers of Solenoid 
w=350;             // turns Winding
s=0.5;             // Length of Solenoid
n=(l*w)/s;         // No.Of turns
I=6;               // Current in the Solenoid
mo=4*%pi*10^-7;    // Permeability of free Space
B=mo*n*I;          // Formula for Megnetic Field at the centre
disp('(a) Megnitude of field near the Centre of Solenoid = '+string(B)+' Tesla');
B1=B/2;            // Formula for Megnetic Field at the end
disp('(b) Megnitude of field at the end of Solenoid = '+string(B1)+' Tesla');
disp('(c) Megnetic Field outside the solenoid is Negligible');



        //    p 188      5.2
