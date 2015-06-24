//Example 21.2
//Mechanics of Machining
//Page No. 687
clc;clear;close;

v=500;                    //in ft/min
alpha=6;                    //in degrees
b=0.4;                    //in inches
t=0.008;                    //in inches
Fv=100;                    //in lb
Fh=250;                    //in lb
L=20;                    //in in
rho=0.283;                    //in lb/in^2
m=13.36;                    //in gm
m=m/454;            //conversion to lb

tc=m/(rho*b*L);
r=t/tc;
fi=atand(r*cosd(alpha)/(1-r*sind(alpha)));
mu=(Fv+Fh*tand(alpha))/(Fh-Fv*tand(alpha));
be=atand(mu);
Pr=sqrt(Fv^2+Fh^2);
Ft=Pr*sind(be);
p_fe=Ft*r/Fh;
Fs=Fh*cosd(fi)-Fv*sind(fi);
vs=v*cosd(alpha)/cosd(fi-alpha);
p_se=Fs*vs/(Fh*v);
U=Fh*v/(b*t*v);
U=U/33000;                     //conversion to hp
U=U/12;                         //conversion of ft units to in units
printf('\nSlip plane angle = %g deg\nPercentage of total energy that goes into friction = %g percent\nPercentage of total energy that goes into shear = %g percent\nTotal energy per unit volume = %g hp min/in^3',fi,p_fe*100,p_se*100,U);
