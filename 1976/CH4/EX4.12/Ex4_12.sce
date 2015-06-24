
//To Determine the Continous Rating of the Motor for Suitable Conditions
//Page 229
clc;
clear;
T=120; //Total Time
t1=0; //Power Rise to 1050
t2=15; //Constant Power of 600
t3=85; //Regenerative Breaking at 200
t4=95; //Motor At Rest
t5=120; //End
//Note Power Rating are in Horse Power
HP1=1050; //First Rise
T1=(t2-t1); //Time for Rise of the Horse Power
HP2=600; //Constant Power
T2=(t3-t2); //Time For which the power is constant
HP3=200; //Braking Initial Point
T3=(t4-t3); //Time Period of Breaking

//Different Intergration
I1=integrate('((HP1/T1)*t)^2','t',t1,t2);
I2=integrate('(HP2^2)','t',t2,t3);
I3=integrate('((HP3/T3)*t)^2','t',0,T3);

HPrms=sqrt((I1+I2+I3)/120);

HPav=(((HP1*T1/2)+(HP2*T2)+(HP3*T3/2))/T);

printf('i) The H.P Rating according to the RMS Value of loading is %g hp\n',HPrms)
printf('ii) The H.P Rating according to the Average Value of Loading is %g hp\n',HPav)
