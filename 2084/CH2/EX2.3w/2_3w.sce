//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 2.3w
//calculation of resultant of the vectors

//given data
//theta1=90; value of angle(in degree) of OA vector
//theta2=0; value of angle(in degree) of OB vector
//theta3=135; value of angle(in degree) of OC vector
OA=5; //magnitude(in m) of OA vector
//OB=magnitude(in m) of OB vector
//OC=magnitude(in m) of OC vector

//calculation
//xcomp1=0; xcomponent(in m) of OA vector
//ycomp1=-OA; ycomponent(in m) of OA vector
//xcomp2=OB; xcomponent(in m) of OB vector
//ycomp2=0; ycomponent(in m) of OB vector
//xcomp3=(-1/sqrt(2))*OC; xcomponent(in m) of OC vector
//ycomp3=(1/sqrt(2))*OC;ycomponent(in m) of OC vector

//xcompr=OB-((1/sqrt(2))*OC); xcomponent(in m) of resultant vector=0(given)     (1)
//therefore OB=((1/sqrt(2))*OC)                                                 (2)
//ycompr=((1/sqrt(2))*OC)-OA; ycomponent(in m) of resultant vector
//((1/sqrt(2))*OC)=OA                                                           (3)

OC=sqrt(2)*OA; //from equation (3)
OB=((1/sqrt(2))*OC) //from equation(2)

disp(OC,'magnitude(in m) of OC vector is');
disp(OB,'magnitude(in m) of OB vector is');
