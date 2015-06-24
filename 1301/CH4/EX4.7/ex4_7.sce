clc;
g=9.8;     //gravitaional constant in metre/sec 
r=0.5;   //radius in metre
m=1;     //mass in kg
v=5;      //velocity in metre/sec
F=(m*v*v)/r;  //calculationg centripetal force in Newton
w=m*g;      //calculating weight in Newton
T=F-w;     //calculating Tension in string at top position in Newton
disp(T,"Tension in the string at the top position in Newton = "); //displaying result
T=F+w;   //calculating Tension at bottom of string in Newton.
disp(T,"Tension in the string at the bottom position in Newton = "); //    displaying Tension at bottom of string in Newton.
