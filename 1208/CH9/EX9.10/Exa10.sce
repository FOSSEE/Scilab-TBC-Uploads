//Exa 10
clc;
clear;
close;
// given data :
SQa1=200//in Kgs
AQa=250//in Kgs
SPa=3//in rupees per Kgs
APa=3.2//in rupees per Kgs
SQb1=250//in kg
AQb=300//in Kg
SPb=5//in rupees per Kg
APb=4.67//in rupees per Kg
SQc1=300//in kg
AQc=350//in Kg
SPc=6//in rupees per Kg
APc=6.43//in rupees per Kg

Loss=250;//in Kg
//calculation of SQ for actual output
StandardYield=(SQa1+SQb1+SQc1)-Loss;//in kg
ActualYield=500;//in kg
SQa=(SQa1*ActualYield)/StandardYield;// in kg
SQb=(SQb1*ActualYield)/StandardYield;// in kg
SQc=(SQc1*ActualYield)/StandardYield;// in kg
//(1)  Material cost variance
MCVa=(SQa1*SPa)-(AQa*APa);//in rupees
MCVb=(SQb1*SPb)-(AQb*APb);//in rupees
MCVc=(SQc1*SPc)-(AQc*APc);//in rupees
//(2)  Material price variance
MPVb=AQb*(SPb-APb);//in rupees
MPVa=AQa*(SPa-APa);//in rupees
MPVc=AQc*(SPc-APc);//in rupees
//(3)  Material usage variance
MUVa=SPa*(SQa1-AQa);//in rupees
MUVb=SPb*(SQb1-AQb);//in rupees
MUVc=SPc*(SQc1-AQc);//in rupees
//(4)  Material mix variance
RSQa=(SQa1*900)/(750);
RSQb=(SQb1*900)/(750);
RSQc=(SQc1*900)/(750);
MMVa=SPa*(RSQa-AQa);
MMVb=SPb*(RSQb-AQb);
MMVc=SPc*(RSQc-AQc);
//(5)  Material Yield variance
TotalSC=SQa1*SPa+SQb1*SPb+SQc1*SPc;// in Rs
TotalSQ=SQa1+SQb1+SQc1-((SQa1+SQb1+SQc1)*Loss)/100;//in Kg
SCperunit=TotalSC/StandardYield;// in Rs
RSY=(StandardYield*(900))/(750);
MYV=SCperunit*(ActualYield-RSY);
//material Cost variance
disp("material Cost variances :")
disp(MCVa,"MCVa=");
disp(MCVb,"MCVb=");
disp(MCVc,"MCVc=");
disp(MCVa+MCVb+MCVc,"Total MCV=");
//material Price variance
disp("material Price variances : ")
disp(MPVa,"MPVa=");
disp(MPVb,"MPVb=");
disp(MPVc,"MPVc=");
disp(MPVa+MPVb+MPVc,"Total MPV=");
//material Usage variance
disp("material Usage variances :")
disp(MUVa,"MUVa=");
disp(MUVb,"MUVb=");
disp(MUVc,"MUVc=");
disp(MUVa+MUVb+MUVc,"Total MUV=");
//material Mix variance
disp("material mix variances :")
disp(MMVa,"MMVa=");
disp(MMVb,"MMVb=");
disp(MMVc,"MMVc=");
disp(MMVa+MMVb+MMVc,"Total MMV=");
//material Yield variance
disp("material Yield variances :")
disp(MYV,"MYV=");
disp("Note :  ")
disp("Negative variances indicate adverse value   ");
disp("Positive variances indicate favourable value   ")