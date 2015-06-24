//Exa 11
clc;
clear;
close;
// given data :
SQa1=240//in Kgs
AQa=280//in Kgs
SPa=4//in rupees per Kgs
APa=3.8//in rupees per Kgs
SQb1=160//in kg
AQb=120//in Kg
SPb=3//in rupees per Kg
APb=3.6//in rupees per Kg
Loss=10;//in %
//calculation of SQ for actual output
StandardYield=(SQa1+SQb1)-((SQa1+SQb1)*Loss)/100;//in kg
ActualYield=364;//in kg
SQa=(SQa1*ActualYield)/StandardYield;// in kg
SQb=(SQb1*ActualYield)/StandardYield;// in kg
//(1)  Material cost variance
MCVa=(SQa*SPa)-(AQa*APa);//in rupees
MCVb=(SQb*SPb)-(AQb*APb);//in rupees
//(2)  Material price variance
MPVb=AQb*(SPb-APb);//in rupees
MPVa=AQa*(SPa-APa);//in rupees
//(4)  Material mix variance
RSQa=(SQa1*400)/(400);
RSQb=(SQb1*400)/(400);
MMVa=SPa*(RSQa-AQa);
MMVb=SPb*(RSQb-AQb);
//(5)  Material Yield variance
TotalSC=SQa1*SPa+SQb1*SPb;// in Rs
TotalSQ=SQa1+SQb1-((SQa1+SQb1)*Loss)/100;//in Kg
SCperunit=TotalSC/StandardYield;// in Rs
RSY=(StandardYield*(400))/(400);
MYV=SCperunit*(ActualYield-RSY);
//material Price variance
disp("material Price variances : ")
disp(MPVa,"MPVa=");
disp(MPVb,"MPVb=");
disp(MPVa+MPVb,"Total MPV=");
//material Mix variance
disp("material mix variances :")
disp(MMVa,"MMVa=");
disp(MMVb,"MMVb=");
disp(MMVa+MMVb,"Total MMV=");
//material Yield variance
disp("material Yield variances :")
disp(MYV,"MYV=");
//material Cost variance
disp("material Cost variances :")
disp(MCVa,"MCVa=");
disp(MCVb,"MCVb=");
disp(MCVa+MCVb,"Total MCV=");
disp("Note :  ")
disp("Negative variances indicate adverse value   ");
disp("Positive variances indicate favourable value   ")