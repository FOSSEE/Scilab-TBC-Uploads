       //EXAMPLE 3-59 PG NO 267
V2=240-%i*14.35;
V1=240+%i*0;
VL=233.73-%i*8.938;
R1=0.6+%i*0.8;
R2=0.5+%i*0.866;
I1=(V1-VL)/R1;
I2=(V2-VL)/R2;
R3=16+%i*12;
I3=(VL/R3);
disp('i) current(I1) is in polar form  =  '+string (I1)+'A ');
disp('i) current(I2) is in polar form  =  '+string (I2)+'A ');
disp('i) current(I3) is in polar form  =  '+string (I3)+'A ');
