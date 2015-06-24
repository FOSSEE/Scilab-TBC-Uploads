//chapter 3
//example 3.4
//page 78
//to find Ie and Ic for a transistor connected in common base configuration
clear;
clc ;
//given
Veb=0.7;                                                                        //emitter to base voltage in volts
Vcb=6;                                                                          //collector to base voltage in volts
//finding Ie from input characteristics of common base configuration
if Vcb==6 & Veb==0.7 then
    Ie=2;                                                                       //emitter current
end
printf('\nIe=%d mA',Ie);

//finding Ic from output characteristics of common base configuration
if Vcb==6 & Ie==2 then
    Ic=2;                                                                       //collector current
end
printf('\nIc1=%d mA',Ic);


//finding Ic from current gain characteristics of common base configuration
if Vcb==6 & Ie==2 then
    Ic=2;
end
printf('\nIc2=%d mA',Ic);
