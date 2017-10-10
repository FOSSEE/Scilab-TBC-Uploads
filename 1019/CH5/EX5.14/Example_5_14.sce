//Example 5.14
clear;
clc;

//Given
delGo1=-29.2;//delGo value for hydrolysis of creatine phosphate in kJ
delGo2=-12.4;//delGo value for hydrolysis of glucose phosphate in kJ

//To determine delGo for given reaction
delGo3=delGo2-delGo1;//gibbs free energy in kJ
mprintf('delGo for the given reaction = %f kJ',delGo3);
//end