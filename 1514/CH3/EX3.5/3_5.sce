//chapter 3
//example 3.5
//page 82

//find Ib(base current) Ic(collector current) for common emitter configuaration from i/p,o/p,current gain characteristics 
clear;
clc ;
//given
Vbe=0.7;                                                                        //base emitter voltage in volts
Vce=6;                                                                          //collctor mitter voltage in volts

//finding Ie from input characteristics of common emitter configuration
if Vce==6 & Vbe==0.7 then
    Ib=60;                                                                      //in microA
end
printf('\nIb=%d microA',Ib);

//finding Ic from output characteristics of common emitter configuration
if Vce==6 & Ib==60 then
    Ic=3.3;                                                                     //in mA
end
printf('\nIc1=%.1f mA',Ic);

//finding Ic from current gain characteristics of common emitter configuration
if Vce==6 & Ib==60 then
    Ic=3.3;                                                                     //in mA

end
printf('\nIc2=%.1f mA',Ic);

Betadc=Ic/(Ib/10^3);                                                            //betadc is  dc common emitter gain factor
printf('\nbetadc =%d',Betadc);
