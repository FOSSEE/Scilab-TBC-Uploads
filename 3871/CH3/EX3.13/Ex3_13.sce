//===========================================================================
//chapter 3 example 13
clc;clear all;

//variable declaration
R1    = 1000;          //resistance in Ω
R2    = 500;           //resistance in Ω
eR1   = 1;          //error resistance
eR2   = 1;          //error resistance

//calculations
R    = (R1*R2)/(R1+R2);        //resistance in Ω
X    = R1*R2;
Y    = R1+R2; 
dX   = (eR1+eR2);            //error in X
//dY   = (dR1/Y)+(dR2/Y);
//dY   = (R1/Y)*(dR1/R1)+((R2/Y)*(dR2/R2)
dY   = ((R1/(Y))*(eR1))+((R2/(Y))*(eR2));      //error in Y
eP   = dX+dY;                                 //percentage error in equivaent parallel resistance in %
e    = R*(eP/(100));                      //error(maximum ossible) in equivalent parallel resistance in Ω
          
          
//result
mprintf("percentage error  = %3.2f percentage",eP);
mprintf("\nerror in equivalent parallel resistance = %3.2f Ω",e);
