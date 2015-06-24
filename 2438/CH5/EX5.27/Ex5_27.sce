//=================================================================================
// chapter 5 example 27

clc;
clear;

//input data 
 Hc1        =  1.41*10^5;       //critical fields in amp/m
 Hc2        = 4.205*10^5;       // critical fields in amp/m
 T1         = 14.1;             //temperature in K
 T2         = 12.9;             // temperature in K
 T3         = 4.2;              //temperature in K
 

//formula
//Hcn =Hc*((1-((T/Tc)^4)))
//calculation
 Tc        =(((((Hc2*(T1^2))-(Hc1*(T2^2)))/(Hc2-Hc1)))^(1/2));          //temperature in K
 Hc0       = Hc1/(1-((T1/Tc)^2));                           //critical field in A/m
 Hc2       = Hc0*(1-(T3/Tc)^2);                           //critical field in A/m


//result
 mprintf('transition temperature =%3.2f K\n',Tc);
 mprintf('critical field  =%3.2e.A/m\n',Hc2);

//================================================================================

