R1=2;                         //Assigning values to parameters
R2=2;
R3=4;
R4=6;
R5=6;
R6=2;
R7=7;
Ra=R6*R3/(R3+R5+R6);         //Converting Delta to Star
Rb=R5*R6/(R3+R5+R6);
Rc=R3*R5/(R3+R5+R6);
R8=Rc+R4;
R9=Rb+R7;
R10=(R8*R9)/(R8+R9);
R=R1+R2+Ra+R10;
disp("Ohms",R,"Equivalent resistor of the network using Star-Delta transformation")