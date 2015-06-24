//Example 1_26
clc;
clear;close;

//Given data: 
Tj=125;//degreeC
Ts=80;//degreeC
theta_jc=0.7;//degree C/W
theta_cs=0.4;//degree C/W
//part (a)
Pav1=(Tj-Ts)/(theta_jc+theta_cs);//W
disp(Pav1,"(a) Average power loss in W")
//part (b)
Ts=50;//degreeC
Pav2=(Tj-Ts)/(theta_jc+theta_cs);//W
disp(Pav2,"(b) Permisible average power loss in W")
rating_increase=(sqrt(Pav2)-sqrt(Pav1))/sqrt(Pav1)*100;//%
disp(rating_increase,"Percentage increase in rating")
