//chapter 3
//example 3.3
//page 77
//to plot current gain characteristics from common base output characteristics of a transistor
//from output characteristics,for Vcb=2 V,6 V
Ie=[1 2 3 4];  //emitter current in mA
Ic=[1 1.9 2.9 3.9]; //emitter current in mA
mtlb_axis([-4 0 0 4])
plot(-Ie,Ic);
xtitle( 'current gain characteristics', 'emitter current', 'collector current' ) ;
 
