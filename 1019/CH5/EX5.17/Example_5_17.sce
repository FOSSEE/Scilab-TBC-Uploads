//Example 5.17
clear;
clc;

//Given
delGo1=3.0;//delGo value for conversion of malate to fumarate in kJ
delGo2=-15.5;//delGo value for conversion of fumarate to asparate in kJ

//To determine delGo for given reaction
delGo3=delGo2+delGo1;//net free energy change for the required reaction in kJ
mprintf('delGo for the conversion of malate to asparate = %f kJ',delGo3);
//end