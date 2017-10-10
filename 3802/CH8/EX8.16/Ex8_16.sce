//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex8_16.sce.

clc;
clear;
P_in_HP=20;
P=(P_in_HP)*736;
N=450;
Ra=0.18;
Rf=0.12;
R=8.7+Ra+Rf;
omega=(2*%pi*N)/60;
Tf=P/omega;

//The voltage developed for 450 rpm is 289 volt which is taken from the curve
E=289;
P_not=(E*E)/R;
Pi=(2*%pi*N*Tf)/60;

//The mechanical input is greater than electrical output , so  the motor speed increases
//The voltage developed for 550 rpm is 403 volt which is taken from the curve
N=550;
E=403;
P_not=(E*E)/R;
Pi=(2*%pi*N*Tf)/60;

printf("\n Electrical input=%5.2f W \n",P_not)
printf("\n Mechanical input=%5.2f W \n",Pi)
if Pi<P_not then
    N1=540;
else
    N1>N
end
printf("\n Desired speed=%d rpm \n",N1)
//Answer vary dueto roundoff error
//since mechanical input is less than electrical output the motor cannot attain a speed as 550 rpm 
//So the speed is 540 rpm which is obtained using trial and error method 
