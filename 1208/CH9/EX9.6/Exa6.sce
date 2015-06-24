//Exa 6
clc;
clear;
close;
// given data :
//mix ratio is the same
SQa=100//in Kgs
AQa=120//in Kgs
SPa=2//in rupees per Kgs
APa=2.20//in rupees per Kgs
SQb=50//in kg
AQb=60//in Kg
SPb=5//in rupees per Kg
APb=4.50//in rupees per Kg
//(1)  Material cost variance
MCVa=(SQa*SPa)-(AQa*APa);//in rupees
MCVb=(SQb*SPb)-(AQb*APb);//in rupees
//(2)  Material price variance
MPVb=AQb*(SPb-APb);//in rupees
MPVa=AQa*(SPa-APa);//in rupees
//(3)  Material usage variance
MUVa=SPa*(SQa-AQa);//in rupees
MUVb=SPb*(SQb-AQb);//in rupees
//(4)  Material mix variance
RSQa=(SQa*180)/(150);
RSQb=(SQb*180)/(150);
MMVa=SPa*(RSQa-AQa);
MMVb=SPb*(RSQb-AQb);
//(4)  Material sub usage variance
MSUVa=SPa*(SQa-RSQa);
MSUVb=SPb*(SQb-RSQb);
//material A
disp("Variances for material A")
disp(MUVa,"MUV=");
disp(MPVa,"MPV=");
disp(MCVa,"MCV=");
disp(MMVa,"MMV=");
disp(MSUVa,"MSUV=")
//material B
disp("Variances for material B")
disp(MUVb,"MUV=");
disp(MPVb,"MPV=");
disp(MCVb,"MCV=");
disp(MMVb,"MMV=");
disp(MSUVb,"MSUV=")
disp("Note :  ")
disp("Negative variances indicate adverse value   ");
disp("Positive variances indicate favourable value   ")