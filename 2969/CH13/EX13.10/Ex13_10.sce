clc
clear
//DATA GIVEN
P=400;                      //maximum value of force that can be developed in N
mu=0.25;                    //coefficient of friction
d=0.6;                      //diameter of drum in m
//Refer the figure
theta=180+45;               //angle of contact in degrees
theta=theta*(%pi)/180;      //theta converted into radians

//moments about A, Ma=0,
T1=P*1/0.5;

//(i)Drum is rotating anticlockwise
//T1>T2                     (T1/T2)=e^(mu*theta)
T2=T1/(%e^(mu*theta));
Mcac=(T1-T2)*(d/2);         //maximum braking torquethat can be developed in N

//(i)Drum is rotating clockwise
//T2>T1                     (T2/T1)=e^(mu*theta)
T2=T1*(%e^(mu*theta));
Mcc=(T2-T1)*(d/2);          //maximum braking torquethat can be developed in N

printf(' (i) The Maximum braking torque that can be developed in anticlockwise direction is: %3.0f Nm. \n',Mcac);
printf(' (ii) The Maximum braking torque that can be developed in clockwise direction is: %3.1f Nm. \n',Mcc);

