//Exa3
clc;
clear;
close;
//given data :
SQ=100;//in Kgs
actualoutput=240000;//in Kgs
stdoutput=80;//in Kgs
costofmaterial=346500;//in Rupees
SQa=(SQ*actualoutput)/stdoutput;//SQa is SQ for actual output
SP=1.20;//in Rupees per Kg
AQ=315000;// in Kg
AP=costofmaterial/AQ;//in Rupees per Kg
//(i) MUV
MUV=SP*(SQa-AQ);//in rupees
//(ii) MPV
MPV=AQ*(SP-AP);//in rupees
//(iii)  MCV
MCV=(SQa*SP)-(AQ*AP);//in rupees
disp(MUV,"MUV=");
disp(MPV,"MPV=");
disp(MCV,"MCV=");
disp("Note :  ")
disp("Negative variances indicate adverse value   ");
disp("Positive variances indicate favourable value   ")











