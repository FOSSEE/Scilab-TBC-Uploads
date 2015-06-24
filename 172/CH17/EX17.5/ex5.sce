//ques5
//determining velocity of sound in air
clear
clc
k=1.4;//constant
R=0.287;//gas constant
//at 300K
T1=300;//K
c1=sqrt(k*R*T1*1000);
printf('Speed of sound at %.0f K = %.1f m/s \n',T1,c1);
T2=1000;//K
c2=sqrt(k*R*T2*1000);
printf(' Speed of sound at %.0f K = %.1f m/s \n',T2,c2);