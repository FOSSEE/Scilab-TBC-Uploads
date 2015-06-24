clc
//Example 11.2
//Calculate the average power 
printf("Given")
disp('v=4*cos(%pi/6*t), V=4(0 deg), Z=2(60 deg)')
Vamp=4;Vang=0;Zamp=2;Zang=60;
//Let I be the phasor current
Iamp=Vamp/Zamp
Iang=Vang-Zang
P=0.5*Vamp*Zamp*cos((Zang*%pi)/180)
printf("P=%d W \n",P);
t=-1:1:15
t1=-3:1:12
v=Vamp*cos(%pi/6*t)
//i=2*cos((%pi/6)*t-(%pi/3))
i=Iamp*cos(%pi/6*t+((Iang*%pi)/180))
figure
a= gca ();
plot (t,v,t,i)
xtitle ('v,i vs t' ,'t' ,'v,i');
a. thickness = 2;
//Instantaneous power p=v*i
//On solving
p=2+4*cos(%pi/3*t+((Iang*%pi)/180))
figure
a= gca ();
plot (t,p)
xtitle ('p vs t' ,'t' ,'p');
a. thickness = 2;
