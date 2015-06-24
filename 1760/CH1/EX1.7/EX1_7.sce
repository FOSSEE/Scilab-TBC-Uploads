                     //Example 1_7  PG NO-20
I1=3;        //current
I2=1;        //current
R=4;        //Resistor
I=I1-I2;   //current through resistance
disp('i)Current Through resistance (I) = '+string (I)+' A');
P=I*I*R;
disp('ii)Power dissipated in resistor (P) = '+string (P)+' W');
V=I*R;
disp('iii)voltage (V) = '+string (V)+' V');
P1=V*I1;         //power dissipated with 3A source
disp('iv)power dissipated with 3A source (P1) = '+string (P1)+' W');


