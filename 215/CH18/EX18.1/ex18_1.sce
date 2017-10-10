clear
close
clc
//Example 18.1
//From the figure 18.2
disp('The equation of v(t) considering one period can be written as')
disp('v(t)=Vm*cos(5*%pi*t) for -0.1&lt;=t&lt;=0.1')
disp('v(t)=0 for 0.1&lt;=t&lt;=0.3')
//Assuming the value of Vm is 1

//Evaluating the constants an and bn
//bn=0 for all n
//an=(2*Vm*cos(n*%pi/2))/(%pi*(1-n^2))
//a0=Vm/%pi
t=-1:0.02:1;
Vm=ones(1,length(t));
v0t=Vm/%pi;
v1t=(Vm.*cos(5*%pi*t)).*0.5;
v0t_v1t=v0t+v1t;
v2t=(2/(3*%pi))*(Vm.*cos(10*%pi*t));
v0t_v1t_v2t=v0t+v1t+v2t;
v3t=(2/(15*%pi))*(Vm.*cos(20*%pi*t));
v0t_v1t_v2t_v3t=v0t+v1t+v2t-v3t;
figure
a = gca ();
a. y_location = "origin";
a. x_location = "origin";
a. data_bounds =[ -1,0;1 0.5];
plot (t,v0t)
xtitle('vot vs t','t in s','vot')
figure
a = gca ();
a. y_location = "origin";
a. x_location = "origin";
a. data_bounds =[ -1,-0.5;1 0.5];
plot (t,v0t_v1t)
a. y_location = "origin";
a. x_location = "origin";
a. data_bounds =[ -1,-0.5;1 0.5];
plot (t,v0t_v1t_v2t,'r.->')
a. y_location = "origin";
a. x_location = "origin";
a. data_bounds =[ -1,-0.5;1 0.5];
plot (t,v0t_v1t_v2t_v3t,'d')
xtitle('v(t)','t in s','v(t) in V')