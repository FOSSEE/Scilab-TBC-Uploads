//chapter 3
//example 3.1
//page 70

clear;
clc ;
//given
alphadc=0.98;                                                                   //common base current gain factor
Icbo=5 ;                                                                        //collector to base leakage current
Ib=100;                                                                         //base current
//calculating collector current
Ic=((alphadc * Ib)+ Icbo)/(1-alphadc);
Ic=Ic/1000;
printf('\ncollector current is %.2f mA',Ic);

//relation between Ie and Ic
Ib=Ib/1000;
Ie=Ic+Ib;
printf('\nemitter current is %.2f mA',Ie);


//taking ratio of Ic and Ie which is alphadc
a =Ic/Ie
printf('\nIc/Ie=%.2f',a)
printf('\nthus Ic/Ie is approximately equal to alphadc') ;
