         //EXAMPLE 5-15   PG NO-306
I2=-0.67;
R1=8;
R2=2;
R3=5;
RN=R1+((R2*R3)/(R2+R3));
I=-I2*(RN/(10+RN));
disp('i) Resistance (RN) is   =  '+string (RN)+'ohm ');
disp('i) Current3 (I) is   =  '+string (I)+'A ');
