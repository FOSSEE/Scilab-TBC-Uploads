//==============================================================================
// chapter 5 example 32

clc;
clear;


//input data 
 Hc1        =  0.176;       //critical fields
 Hc2        = 0.528;       // critical fields
 T1         = 14;        //temperature in K
 T2         = 13;       // temperature in K
 T3         = 4.2;

//formula
//Hcn =Hc*((1-((T/Tc)^4)))
//calculation
 Tc     =(((((Hc2*(T1^2))-(Hc1*(T2^2)))/(Hc2-Hc1)))^(1/2));
 Hc0    = Hc1/(1-((T1/Tc)^2));
 Hc2    = Hc0*(1-((T3/Tc)^2));


//result
 mprintf('transition temperature =%3.2f K\n',Tc);
 mprintf(' critical field  =%3.2f.T\n',Hc2);

//==============================================================================
