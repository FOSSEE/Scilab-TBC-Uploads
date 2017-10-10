//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex7_2.sce.

clc;
clear;
Np=1000;                          //number of Primary turns
Ns=200;                           //number of secondary turns
Io=3;                             //No load current in A
cos_phi_not=0.2;                   //lagging
Is=250;                            //secondary current in A
cos_phi_s=0.8;                        //lagging

Is_dash=Ns*Is/Np;
phi_s=(acosd(0.8));
phi_not=(acosd(0.2));
Ip_cos_phi_p=(Is_dash*cos_phi_s)+(Io*cos_phi_not);
Ip_sin_phi_p=(Is_dash*(sind(phi_s)))+(Io*(sind(phi_not)));
Ip=sqrt((Ip_cos_phi_p)^2+(Ip_sin_phi_p)^2);
printf("\n Primary current=%2.2f A\n",Ip)

phi_p=atand((Ip_sin_phi_p)/(Ip_cos_phi_p));
printf("\n Power factor=%1.3f lagging",cosd(phi_p))
