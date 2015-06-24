//Part B Chapter 4 Example 2
clc;
clear;
close;
R=125;//mm
D=250/1000;//m
d=160/1000;//m
tau_s=70;//MN/m^2
IP=%pi/32*(D^4-d^4);//m^4
Tmax=tau_s*10^6*IP/(R/1000);//Nm
Tmin=Tmax/1.40;//Nm
N=60;//RPM
P=2*%pi*N*Tmin/60;//W
disp("Power transmitted by the shaft is "+string(P/1000)+" kW");
L=5;//m
G=80;//GN/m^2
theta=tau_s*L/R/G*180/%pi;//degree
disp("Angle of twist is "+string(theta)+" degree.");
//Solution is not complete in the book.
