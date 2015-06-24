// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 11, Example 4")
//Determine the view factors F14 for the composite surface .
//From the table of radiation shape factor b/w two perpendicular surfaces F1,2-3,4=0.14 and F1,2-3=0.1
//By subdivision of the recieving surfaces we get F1,2-4=F1,2-3,4-F1,2-3
//Let F1,2-4=F124 , F1,2-3,4=F1234 , F1,2-3=F123
F1234=0.14;//View factor
F123=0.1;//View factor
F124=F1234-F123;//View factor
//Again from the table of radiation shape factor b/w two perpendicular surfaces F2-3,4=0.24 , F23=0.18
//Let F2-3,4=F234
F234=0.24;//View factor
F23=0.18;//View factor
//By subdivision of the recieving surfaces we get F24=F2-3,4-F23
F24=F234-F23;//view factor
//A1 and A2 are the emitting surface areas.
A1=12;
A2=12;
//Now by subdivision of emitting surfaces F1,2-4=(1/(A1+A2))*(A1*F14+A2*F24)
//This implies F14=((F1,2-4*(A1+A2)))-A2*F24)/A2
disp("The view factor F14=((F1,2-4*(A1+A2)))-A2*F24)/A2")
F14=((F124*(A1+A2))-(A2*F24))/A2



 
