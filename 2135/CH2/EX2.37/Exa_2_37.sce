//Exa 2.37
clc;
clear;
close;
format('v',8);

//Given Data : 
m1dot=0.01;//Kg/s
h1=2950;//KJ/Kg
C1=20;//m/s
m2dot=0.1;//Kg/s
h2=2565;//KJ/Kg
C2=120;//m/s
m3dot=0.001;//Kg/s
h3=421;//KJ/Kg
C3=0;//m/s
C4=0;//m/s
Wsf_dot=25;//KW
Qdot=0;//KJ
//m1dot+m2dot=m3dot+m4dot
m4dot=m1dot+m2dot-m3dot;//Kg/s
//m1dot*(h1+C1^2/2/1000)+m2dot*(h2+C2^2/2/1000)=m3dot*(h3+C3^2/2/1000)+m4dot*(h4+C4^2/2/1000)+Wsf_dot
h4=(m1dot*(h1+C1^2/2/1000)+m2dot*(h2+C2^2/2/1000)-m3dot*(h3+C3^2/2/1000)-Wsf_dot)/m4dot-C4^2/2/1000;//KJ/Kg
disp(h4,"Enthalpy of 2nd exit stream in KJ/Kg : ");
