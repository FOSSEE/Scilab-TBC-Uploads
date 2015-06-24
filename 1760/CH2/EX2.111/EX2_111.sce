                        //EXAMPLE 2-111         PG NO-147
VCB=2.49-%i*12.50;
R=4+%i*2;
I1=VCB/R;
disp('i) CURRENT  (I1) is  in polar form  =  '+string (I1) +' A ');
I2=2.5+%i*0;
I=I1+I2;
disp('i) CURRENT  (I) is  in polar form  =  '+string (I) +' A ');
VAC=11.8-%i*0.12;
VCB=2.5-%i*12.5;
VAB=VAC+VCB;
disp('i) VOLTAGE  (VAB) is  in polar form  =  '+string (VAB) +' V ')
