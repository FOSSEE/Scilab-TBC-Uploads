//A Textbook of Chemical Engineering Thermodynamics
//Chapter 7
//Properties of Solutions
//Example 11


clear;
clc;


//Given:
xb = [0 0.2 0.4 0.6 0.8 1.0];
pa_bar = [0.457 0.355 0.243 0.134 0.049 0];
pb_bar = [0 0.046 0.108 0.187 0.288 0.386];

//To confirm mixture conforms to Raoult's Law and to determine Henry's law constant
clf
xa = 1-xb;
plot(xa,pa_bar);
plot(xa,pb_bar);
xtitle(" ","Mole fraction of A","Partial Pressure");

//For Raoult's Law plotting
x = linspace(0,1,6);
y1 = linspace(0,0.457,6);
y2 = linspace(0.386,0,6);
plot2d(x,y1,style=3);
plot2d(x,y2,style=3);

//For Henry's law plotting
x = [0 0.2 0.4 0.6 0.8 1.0];
//Form the partial presures plot of component A and B
yh1(1) = 0; yh1(2) = 0.049; //For component A
for i = 3:6
    yh1(i) = yh1(i-1)+(x(i)-x(i-1))*((yh1(2)-yh1(1))/(x(2)-x(1)));
end

yh_2(6) = 0; yh_2(5) = 0.046; //For component B
i = 4;
while (i~=0)
    yh_2(i) = yh_2(i+1) + (x(i)-x(i+1))*((yh_2(6)-yh_2(5))/(x(6)-x(5)));
    i = i-1;
end
plot2d(x,yh1,style=6);
plot2d(x,yh_2,style=6);
legend("Partial pressure "," ","Raoults law"," ","Henrys Law");

//(a)
mprintf('From the graph it can be inferred that, in the region where Raoults law is obeyed by A, the Henrys law is obeyed by B, and vice versa');

//(b)
//Slope of Henry's law
mprintf('\n For component A, Ka = %f bar',yh1(6));
mprintf('\n For component B, Kb = %f bar',yh_2(1));

//end