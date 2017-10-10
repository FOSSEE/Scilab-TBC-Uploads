//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 23_5w

clc;clear;
//Given Data

rt=6.5; //Resistance of platinum thermometer at boiling point(unit :ohm)
r0=2.5; //Resistance of platinum thermometer at ice point(unit :ohm)
r100=3.5;   //Resistance of platinum thermometer at steam point(unit :ohm)

//Calculation

t=(rt-r0)*100/(r100-r0);    //Calculation of temperature of sulphur on new scale (Unit: Degree)

disp(t,"Boiling temperature of sulphur on this scale is (Unit: Degree)");
