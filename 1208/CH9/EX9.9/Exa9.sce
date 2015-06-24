//Exa 9
clc;
clear;
close;
// given data :
SQx1=120//in Kgs
AQx=112//in Kgs
SPx=5//in rupees per Kgs
APx=5//in rupees per Kgs
SQy1=80//in kg
AQy=88//in Kg
SPy=10//in rupees per Kg
APy=10//in rupees per Kg
Loss=30;//in %
//calculation of SQ for actual output
StandardYield=(SQx1+SQy1)-((SQx1+SQy1)*Loss)/100;//in kg
ActualYield=150;//in kg
SQx=(SQx1*ActualYield)/StandardYield;// in kg
SQy=(SQy1*ActualYield)/StandardYield;// in kg
//(1)  Material cost variance
MCVx=(SQx*SPx)-(AQx*APx);//in rupees
MCVy=(SQy*SPy)-(AQy*APy);//in rupees
//(2)  Material price variance
MPVy=AQy*(SPy-APy);//in rupees
MPVx=AQx*(SPx-APx);//in rupees
//(3)  Material usage variance
MUVx=SPx*(SQx-AQx);//in rupees
MUVy=SPy*(SQy-AQy);//in rupees
//(4)  Material mix variance
RSQx=(SQx*200)/(200);
RSQy=(SQy*200)/(200);
MMVx=SPx*(SQx1-AQx);
MMVy=SPy*(SQy1-AQy);
//(5)  Material Yield variance
TotalSC=SQx1*SPx+SQy1*SPy;// in Rs
TotalSQ=SQx1+SQy1-((SQx1+SQy1)*Loss)/100;//in Kg
SCperunit=TotalSC/TotalSQ;// in Rs
RSY=(StandardYield*(200))/(200);
MYV=SCperunit*(ActualYield-RSY);
//material Cost variance
disp("material Cost variances :")
disp(MCVx,"MCVx=");
disp(MCVy,"MCVy=");
disp(MCVx+MCVy,"Total MCV=");
//material Price variance
disp("material Price variances : ")
disp(MPVx,"MPVx=");
disp(MPVy,"MPVy=");
disp(MPVx+MPVy,"Total MPV=");
disp("As standard prices and atual prices are same, hence there is no material Price variance")
//material Usage variance
disp("material Usage variances :")
disp(MUVx,"MUVx=");
disp(MUVy,"MUVy=");
disp(MUVx+MUVy,"Total MUV=");
//material Mix variance
disp("material mix variances :")
disp(MMVx,"MMVx=");
disp(MMVy,"MMVy=");
disp(MMVx+MMVy,"Total MMV=");
//material Yield variance
disp("material Yield variances :")
disp(MYV,"MYV=");
disp("Note :  ")
disp("Negative variances indicate adverse value   ");
disp("Positive variances indicate favourable value   ")