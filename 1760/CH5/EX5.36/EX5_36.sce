                                //EXAMPLE 5-36            PG NO=329
I1=-10;                              //CURRENT
Vpc=15;
I2=7.5;
Vqc=I2*1;
disp(' Voltage is   = '+string(Vqc)+'V');
Vpq=Vpc-Vqc;
disp(' Voltage is   = '+string(Vpq)+'V');
RTH=1.406;
Pmax=[I2/(2*RTH)]^2*RTH;
disp(' Power is   = '+string(Pmax)+'W');