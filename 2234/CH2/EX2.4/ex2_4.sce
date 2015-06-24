clc;
disp("Example2.4");
v=3500;                 //volume in metre cube.
n1=370-300;             //no. of audience on wooden seats.
n2=300-70;              //no. of empty wooden seats.
a1s1=0.04*60;           //absorption due to wooden doors.
a2s2=0.03*700;          //absorption due to plastered walls.
a3s3=0.06*50;           //absorption due to glass work.
a4s4=4.2*370;           //absorption due to audience on spungy and wooden 
//seats.
a5s5=2*230;              //absorption due to empty seats.
sum=a1s1+a2s2+a3s3+a4s4+a5s5; //total absorption of cinema hall.
T=(0.165*v)/sum;         //calculating T using Sabine Formula.
disp(T,"Reverberation Time = ");     //Displaying Result.