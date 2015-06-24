// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 3 Example 21")
p1=35*10^5;//initial pressure of air in pa
v1=0.3;//initial volume of air in m^3
T1=(40+273);//initial temperature of air in K
p2=1*10^5;//final pressure of air in pa
v2=0.3;//final volume of air in m^3
y=1.4;//expansion constant
R=0.287;//gas constant in KJ/kg K
Cv=0.718;//specific heat at constant volume in KJ/kg K
Cp=1.005;//specific heat at constant pressure in KJ/kg K
disp("here turbogenerator is fed with compressed air from a compressed air bottle.pressure inside bottle gradually decreases from 35 bar to 1 bar.expansion from 35 bar to 1 bar occurs isentropically.thus,for the initial and final states of pressure,volume,temperatureand mass inside bottle being given as p1,v1,T1 & m1 and p2,v2,T2 & m2 respectively.it is transient flow process similar to emptying of the bottle.")
disp("(p2/p1)^((y-1)/y)=(T2/T1)")
disp("final temperature of air(T2)in K")
disp("T2=T1*(p2/p1)^((y-1)/y)")
T2=T1*(p2/p1)^((y-1)/y)
disp("by perfect gas law,initial mass in bottle(m1)in kg")
disp("m1=(p1*v1)/(R*1000*T1)")
m1=(p1*v1)/(R*1000*T1)
disp("final mass in bottle(m2)in kg")
disp("m2=(p2*v2)/(R*1000*T2)")
m2=(p2*v2)/(R*1000*T2)
disp("energy available for running turbo generator or work(W)in KJ")
disp("W+(m1-m2)*h2=m1*u1-m2*u2")
disp("W=(m1*Cv*T1-m2*Cv*T2)-(m1-m2)*Cp*T2")
W=(m1*Cv*T1-m2*Cv*T2)-(m1-m2)*Cp*T2
disp("this is maximum work that can be had from the emptying of compresssed air bottle between given pressure limits")
disp("turbogenerator actual output(P1)=5 KJ/s")
P1=5;//turbogenerator actual output in KJ/s
disp("input to turbogenerator(P2)in KJ/s")
P2=P1/0.6
disp("time duration for which turbogenerator can be run(deltat)in seconds")
disp("deltat=W/P2")
deltat=W/P2
disp("duration=160 seconds approx.")



