//Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 2, Example 09")
//A thin walled copper tube of outside metal radius r=0.01m carries steam at temprature, T1=400K.It is inside a room where the surrounding air temprature is Tinf=300K.
T1=400;
Tinf=300;
r=0.01;
//The tube is insulated with magnesia insulation of an approximate thermal conductivity of k=0.07W/(m*K)
k=0.07;
//External convective Coefficient h=4W/(m^2*K)
h=4;
//Critical thickness(rc) is given by k/h
disp("The critical thickness of insulation in metre is")
rc=k/h
//We use the rate of heat transfer per metre of tube length as Q=(Ti-Tinf)/((ln(r2/r1)/(2*%pi*L*k))+(1/(h*2*%pi*r2*L))) where length,L=1m
L=1;
//When 0.002m thick layer of insulation r1=0.01m,r2=0.01+0.002=0.012m
r1=0.01;//inner radius
r2=0.012;//outer radius
//Let ln(r2/r1)=X
X=log(r2/r1)/log(2.718);
//The heat transfer rate per metre of tube length is Q
disp("The heat transfer rate Q per metre of tube length in W/m is ")
Q=(T1-Tinf)/(((X)/(2*%pi*L*k))+(1/(h*2*%pi*r2*L)))
//When critical thickness of insulation r1=0.01m,r2=0.0175m
r2=0.0175;//outer radius
r1=0.01;//inner radius
//Let ln(r2/r1)=X
X=log(r2/r1)/log(2.718);
//The heat transfer rate per metre of tube length is Q 
disp("The heat transfer rate per metre of tube length Q in W/m is ")
Q=(T1-Tinf)/(((X)/(2*%pi*L*k))+(1/(h*2*%pi*r2*L)))
//When there is a 0.05 m thick layer of insulation r1=0.01m,r2=.01+0.05=0.06m
r1=0.01;//inner radius
r2=0.06;//outer radius
//Let ln(r2/r1)=X
X=log(r2/r1)/log(2.718);
//The heat transfer rate per metre of tube length is Q 
disp("The heat transfer rate per metre of tube length Q in W/m is ")
Q=(T1-Tinf)/(((X)/(2*%pi*L*k))+(1/(h*2*%pi*r2*L)))
//It is important to note that Q increases by 5.2% when the insulation thickness increases from 0.002m to critical thickness. 
//Addition of insulation beyond the critical thickness decreases the value of Q (The heat loss).










