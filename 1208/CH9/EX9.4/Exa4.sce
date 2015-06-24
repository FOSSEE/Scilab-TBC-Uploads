//Exa3
clc;
clear;
close;
//given data :
quantity=3000;//material purchased
value=9000;//rupees for material purchased
SQ=25;
stdoutput=1;//in tonnes
actualoutput=80;//in tonnes
//SQ for actual output
SQa=(SQ*actualoutput)/stdoutput;
//Material consumed or AQ
AQ=3000+100-600;//opening stock=100;Purchased=3000;closing stock=600;
SP=2;//rupees per unit
AP=value/quantity;//rupees per unit
//(i) MUV
MUV=SP*(SQa-AQ);//in rupees
//(ii) MPV
MPV=AQ*(SP-AP);//in rupees
//(iii)  MCV
MCV=(SQa*SP)-(AQ*AP);//in rupees
disp(MUV,"MUV=");
disp(MPV,"MPV=");
disp(MCV,"MCV=");
disp("Note :  ");
disp("Negative variances indicate adverse value   ");
disp("Positive variances indicate favourable value   ");