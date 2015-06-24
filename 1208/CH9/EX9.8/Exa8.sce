//Exa 8
clc;
clear;
close;
// given data :
//mix ratio is not same
SQx=54//in Kgs
AQx=40//in Kgs
SPx=6//in rupees per Kgs
APx=6//in rupees per Kgs
SQy=44//in kg
AQy=50//in Kg
SPy=5//in rupees per Kg
APy=5//in rupees per Kg
SQz=20//in kg
AQz=24//in Kg
SPz=7//in rupees per Kg
APz=7//in rupees per Kg
//(1)  Material cost variance
MCVx=(SQx*SPx)-(AQx*APx);//in rupees
MCVy=(SQy*SPy)-(AQy*APy);//in rupees
MCVz=(SQz*SPz)-(AQz*APz);//in rupees
//(2)  Material price variance
MPVy=AQy*(SPy-APy);//in rupees
MPVx=AQx*(SPx-APx);//in rupees
MPVz=AQz*(SPz-APz);//in rupees
//(3)  Material usage variance
MUVx=SPx*(SQx-AQx);//in rupees
MUVy=SPy*(SQy-AQy);//in rupees
MUVz=SPz*(SQz-AQz);//in rupees
//(4)  Material mix variance
RSQx=(SQx*114)/(118);
RSQy=(SQy*114)/(118);
RSQz=(SQz*114)/(118)
MMVx=SPx*(RSQx-AQx);
MMVy=SPy*(RSQy-AQy);
MMVz=SPz*(RSQz-AQz);
//(5)  Material sub usage variance
MSUVx=SPx*(SQx-RSQx);
MSUVy=SPy*(SQy-RSQy);
MSUVz=SPz*(SQz-RSQz);
//material Cost variance
disp("material Cost variances :")
disp(MCVx,"MCVx=");
disp(MCVy,"MCVy=");
disp(MCVz,"MCVz=");
//material Usage variance
disp("material Usage variances :")
disp(MUVx,"MUVx=");
disp(MUVy,"MUVy=");
disp(MUVz,"MUVz=");
//material Price variance
disp("material Price variances : ")
disp(MPVx,"MPVx=");
disp(MPVy,"MPVy=");
disp(MPVz,"MPVz=");
disp("As standard prices and atual prices are same, hence there is no material Price variance")
//material Mix variance
disp("material mix variances :")
disp(MMVx,"MMVx=");
disp(MMVy,"MMVy=");
disp(MMVz,"MMVz=");
//material Sub usage variance
disp("material sub Usage variances :")
disp(MSUVx,"MSUVx=")
disp(MSUVy,"MSUVy=")
disp(MSUVz,"MSUVz=")
disp("Note :  ")
disp("Negative variances indicate adverse value   ");
disp("Positive variances indicate favourable value   ")