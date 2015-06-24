//Example6.16  // for the a current to voltage converter show a) Rin = (Rf/1+Aop)  b) Rf = 10 K ohm Aop = 1000 
clc;
clear;
close;

//a) The input resistance given as
//Rin = (Rf)/(1+Aop) ;

// The input resistance of the circuit can be written as
//Rin = (V1/i!);

//  the feedback current of the given circuit is defined as
//i1 =(V1-Vo)/RF ;

// the feedback resistance RF is 
//RF =(V1-Vo)/i1 ;

// The output voltage Vo is
//Vo = -Aop*V1 ;

//by using this output feedback currenty i1 can be reformed as
//i1 = (V1-(-Aop*V1))/RF ;

//i1 = V1*(1+Aop)/RF ;

// Then Rin Becomes 
//Rin =Rf/(1+Aop);

Rf =10*10^3 ;
Aop = 1000 ;

// the input current and output voltage of the circuit are defined as
//i1 =(Rs)/(Rs+Rin) ;
// Vo = -(Aop*(RF/1+Aop))*i1 ;

//the input resistance Rin is 
Rin =(Rf/(1+Aop)) ;

// subsituting the value of RF Aop Rin and Vo we get 
RF = 10 ;
Rin = RF/(1+Aop)
disp('The input resistance Rin is = '+string(Rin)+ ' ohm ');

Aop = 1000 ;
//(1000/1001)*(Rs/(Rs*0.00999))> 0.99 ;
// by solving above equation we get 
Rs = 1.099  ;  // K ohm 
disp(' The value of Resistance Rs is = '+string(Rs)+ ' K ohm ');
