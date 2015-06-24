clc,clear
//example 1.10
//To find sine,cosine and tangent functions for 75 degree

//triangle_ADB, angle_BAD = 30
AB=sqrt(3);BD=1;
AD=sqrt(AB^2+BD^2); //pythagoras theorem

//angle_DAB + angle_CAB = 75
//triangle_ABC, angle_BAC = 45
//pythagoras theorem and 45 degrees
AC=AB/sqrt(2);BC=AC; 

angle_BAC = 45 ; angle_DAB = 30 ;
angle_DAE = angle_BAC + angle_DAB ;//required angle
angle_ADE = 90 - angle_DAE ;//complement of DAE
angle_ADB = 90 - angle_DAB ;//complement of DAB

//Draw BF perpendicular to DE
angle_BDF = angle_ADB - angle_ADE;
angle_DBF = 90 - angle_BDF; //complement of BDF
//By pythagoras theorem and 45 degree
DF=sqrt(BD/2);FB=DF; 

EC=FB;//parallel sides of rectangle
FE= BC; //parallel sides of rectangle
DE=DF+FE;//from the figure
AE=AC-EC;//from the figure

sin_DAE = DE/AD;
cos_DAE = AE/AD;
tan_DAE = DE/AE;
csc_DAE = AD/DE;
sec_DAE = AD/AE;
cot_DAE = AE/DE;

printf('sin(%d)=%f\n',angle_DAE,sin_DAE);
printf('cos(%d)=%f\n',angle_DAE,cos_DAE);
printf('tan(%d)=%f\n',angle_DAE,tan_DAE);
printf('csc(%d)=%f\n',angle_DAE,csc_DAE);
printf('sec(%d)=%f\n',angle_DAE,sec_DAE);
printf('cot(%d)=%f\n',angle_DAE,cot_DAE);
