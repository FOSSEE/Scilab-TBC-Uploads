                      //EXAMPLE 4-61    PG NO-267-268
I1=0.05-%i*6.49;
I2=0.040+%i*0.02;
R1=100;
R2=4+%i*200;
Vab=(R1*I2)-[R2*(I1-I2)];
disp('i) VOLTAGE  (Vab) is    =  '+string (Vab) +' V ');
