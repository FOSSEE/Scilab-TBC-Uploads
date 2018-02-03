//=====================================================================================================
//chapter 1 example 6

clc;
clear all;

//variable declaration
l    = 0.2;           //percent liearity
r    = 300;           //full-scale readng 
R    = 20;            //resistance in kΩ
V    = 2;             //voltage in V

//calculations
d    = (l*r)/(100);      //maximum displacement deviatio in  °
R1    = (l*R)/(100);       //maximum resistance displacement in Ω
//a displacement of 300 corresponds to 2V  ,therfore 0.6 corresponds to a voltage of (0.6/300)*2
ev    = (d/(r))*V;        //maximum voltage error in mV

//result
mprintf("maximum displacement deviation =%3.1f ° ",d);
mprintf("\nmaximum resistance displacement %3.2f kΩ",R1);
mprintf("\n maximum voltage error  %3.2f mV",(ev*10^3));

//=======================================================================================================
