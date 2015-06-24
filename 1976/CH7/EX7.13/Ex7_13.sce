
//To determine the traction control of 2 motors rated at 1500V
//Page 396
clc;
clear;

NoM=2; //Number of motors
V=1500; //Rated Voltage
I=500; //Starting Current
R=0.15; //Armature Resistance
r=50; //Specific Resistance
W=120;
We=140;
Ft=38000; // Tractive Effort Per motor

Vs=40; //Speed at the end of starting period
//Note the question is asked for 50 Kmph, But the answer is calculated for 40Kmph
//Therefore it is calculated for 40 Kmph
//By Changing the value of Vs to 50 Kmph, The Specific Parameters can also be obtained

a=poly(0,'a'); //Accleration Variable

X=(2*Ft)-((277.8*We*a)+(W*r)); //Polynomial To find 'a'

a=roots(X); //To find the Numerical Value of the Acceleration

t=Vs/a; //Starting Time

Vd=I*R; //Resistance drop per motor

ts=t*(V-(2*Vd))/(2*(V-Vd)); //Starting Series Time Period
tp=t-ts; //Starting Parallel Time Period

Vt=a*ts; //Speed at Transition
//Loss can be found out by the computing the area under the of the given figure in the text book for different period
//In series, the Voltage reduces, Hence 675;
Rhel=((((V/2)-Vd)*I*ts)+((V/2)*I*tp))/(2*3600*1000); //Loss per motor in kWhr
Rhe=NoM*Rhel; //Total Rheostatic Loss

printf('i) The Duration of starting period is %g seconds\n',t)
printf('ii)The Speed of Train at Transition is %g Kmph\n',Vt)
printf('iii) The Rheostatic Loss is %g kWhr\n',Rhe)
