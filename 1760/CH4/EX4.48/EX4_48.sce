                        //EXAMPLE 4-48         PG NO-260
Vm=63.43+%i*33.38;
V=100+%i*0;
V1=0+%i*50
R1=5+%i*0;
R2=8+%i*6;
R3=12+%i*16;
I1=(V-Vm)/R1;
disp('i) Current (I1)   is     =  '+string (I1) +' A ');
I2=(V1-Vm)/R2;
disp('ii) Current (I2)   is     =  '+string (I2) +' A ');
I3=(Vm)/R3;
disp('iii) Current (I3)   is     =  '+string (I3) +' A ');
