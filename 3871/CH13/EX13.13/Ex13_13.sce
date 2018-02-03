clc;
clear all;

//variable declaration
f    = 60;        //supply frequency in Hz
Pi    = 360;        //iron loss in W
f    = 60;
//Pe    =6*Ph;
//Pi    = Pe+Ph
//360= (6*Ph)+Ph
Ph    = Pi/7;    //hysteresis loss in W
Pe    = Pi-Ph;    //eddy current loss in W
 //Ph1    = (f1/f)*Ph
Ph1    = (1/f)*Pe;    //hysteresis loss in watts
//Ph1    =Ph1*f1
//Pe1    = ((f1/f)^2)*Pe
Pe1    =((1/f)^2)*Pe;    //eddy current loss 
//Pe1    = Pe1*Pe
Pi1    =Ph1+Pe1;
Pi1     = 2*Pi;
//720    = 0.857*f1+(0.0857*f1^2)
f1    =86.8


//result
mprintf("new supplyfrequency = %3.2f HZ",f1);
