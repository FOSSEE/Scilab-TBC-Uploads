I1=5;                    //Assigning values to parameters
I2=2;
V1=6;
R1=2;
R2=4;
I1=5;
I2=(R1*I1-6)/R1;
I3=I2+2;
IN=I3;                //Calculation of Norton current
RN=R1;                //Calculation of Norton resistance
Il=IN*RN/(RN+R2);     //Calculation of load current using Norton theorem
disp("Amperes",Il,"Current in 4 Ohm resistor by Norton theorem");