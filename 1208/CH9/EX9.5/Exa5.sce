//Exa3
clc;
clear;
close;
//given data :
SQa=100//in Kgs
AQa=90//in Kgs
SPa=2//in rupees per Kgs
APa=2.20//in rupees per Kgs
SQb=50//in kg
AQb=60//in Kg
SPb=5//in rupees per Kg
APb=4.50//in rupees per Kg
//(i) MUVa
MUVa=SPa*(SQa-AQa);//in rupees
//(ii) MPVa
MPVa=AQa*(SPa-APa);//in rupees
//(iii)  MCVa
MCVa=(SQa*SPa)-(AQa*APa);//in rupees

//(i) MUVb
MUVb=SPb*(SQb-AQb);//in rupees
//(ii) MPVb
MPVb=AQb*(SPb-APb);//in rupees
//(iii)  MCVb
MCVb=(SQb*SPb)-(AQb*APb);//in rupees
RSQa=(SQa*150)/(SQa+SQb);
RSQb=(SQb*150)/(SQa+SQb);
//(iv) MMVa
MMVa=SPa*(RSQa-AQa);
//(iv) MMVb
MMVb=SPb*(RSQb-AQb);
//(v) MSUVa
MSUVa=SPa*(SQa-RSQa);
//(v) MSUVb
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
