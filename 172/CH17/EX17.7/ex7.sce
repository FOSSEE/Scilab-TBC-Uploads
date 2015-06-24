//ques7
//determining exit properties in a control volume
clear
clc
Po=1000;//stagnation pressure in kPa
To=360;//stagnation temperature in K

//when diverging section acting as nozzle
Pe1=0.0939*Po;//exit pressure of air in kPa
Te1=0.5089*To;//exit temperature in K
k=1.4;//constant
R=0.287;//gas constant for air
ce=sqrt(k*R*Te1*1000);//velocity of sound in exit section in m/s
Me=2.197;//mach number from table
ve1=Me*ce;//velocity of air at exit section in m/s
disp(" When diverging section act as a nozzle :-");
printf('Exit pressure  = %.1f kPa \n',Pe1);
printf('Exit Temperature = %.1f K \n',Te1);
printf('Exit velocity = %.1f m/s \n',ve1);

//when diverging section act as diffuser
Me=0.308;
Pe2=0.0936*Po;//exit pressure of air in kPa
Te2=0.9812*To;//exit temperature in K
ce=sqrt(k*R*Te2*1000);//velocity of sound in exit section in m/s
ve2=Me*ce;
disp(" When diverging section act as a diffuser :-");
printf('Exit pressure  = %.1f kPa \n',Pe2);
printf('Exit Temperature = %.1f K \n',Te2);
printf('Exit velocity = %.1f m/s \n',ve2);

