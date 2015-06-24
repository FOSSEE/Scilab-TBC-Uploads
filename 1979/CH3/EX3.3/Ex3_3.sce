//chapter-3 page 48 example 3.3
//==============================================================================
clc;
clear;

w=4*(%pi);//Angular Frequency in rad/sec
b=0.02543;//Phase Constant in rad/km

//CALCULATION
Vp=w/b;//Phase Velocity in km/sec

//OUTPUT
mprintf('Phase Velocity is Vp=%3.2f km/sec',Vp);

//=========END OF PROGRAM=========================

//NOTE:CHECK THE CALCULATION PART GIVEN IN THE TEXTBOOK
     //GIVEN ANSWER 494.22 KM/SEC
     //GETTING ANSWER 494.16 KM/SEC


