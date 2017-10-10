//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 5
//example 5.2
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
l=50;                             //load in hp
f=60;                            //frequency in hertz
n=1764;                         //full load speed in rpm
ns=1800;                       //synchronous speed of motor in rpm
Pr=.950;                      //rotational loss in kilowatts
Pcu=1.600;                   //stator copper loss in kilowatt
Pi=1.200;                   //iron loss in kilowatt
Pout=l/1.34;               //output power at full load is 50 hp in kilowatt
Pd=Pout+Pr;               //power developed in kilowatt
s=(ns-n)/ns;             //slip of the motor
Pg=Pd/(1-s);
Pin=Pg+Pcu+Pi;         //input power in kilowatt
efficiency=Pout/Pin;  //motor efficiency
efficiency=efficiency*100;//efficiency in percentage
mprintf("The efficiency of the motor is %d percentage",efficiency)
