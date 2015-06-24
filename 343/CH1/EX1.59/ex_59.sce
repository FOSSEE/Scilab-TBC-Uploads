V1=50;                         //Assigning values to parameters
V2=36;
R1=5;
R2=20;
R3=10;
I1=4;
R4=(R2*R3)/(R2+R3);
R5=R4+R1;
I5a=V1/R5;                    //Considering only 50V source
I5b=I1*(R4/(R4+R1));            //Considering only 4A current source
I2=V2/R3;                     //Converting 36V voltage source to 3.6A current source using source transformation
I5c=I2*(R4/(R4+R1));            //Considering only 3.6A current source
I=(I5b+I5c)-I5a;                //Adding the currents algebraically
disp("Amperes",I,"Current through 5 Ohm resistor using Superposition principle");