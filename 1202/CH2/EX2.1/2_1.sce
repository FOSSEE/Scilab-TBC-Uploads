clear
clc

//Example 2.1
disp('Example 2.1')

w1bar=500;
w2bar=200;
x1bar=0.4;
x2bar=0.75;
wbar=w1bar+w2bar;
t=0:0.1:25; //Time scale for plotting of graphs

//(a)
xbar=(w1bar*x1bar+w2bar*x2bar)/wbar;
printf('\n (a) The steady state concentration is %f \n',xbar)

//(b)
w1bar=400; //flow rate changes, rest remains same
wbar=w1bar+w2bar;
tau=3;
x0=0.5;  
Cstarb=(w1bar*x1bar+w2bar*x2bar)/wbar;  //C* variable
printf('\n (b) The value of C* is %f',Cstarb)
printf('\n x(t)=0.5exp(-t/3)+%f(1-exp(-t/3)) \n',Cstarb);
xtd=0.5*exp(-t/3)+Cstarb*(1-exp(-t/3));

xtb=0.5*exp(-t/3)+Cstarb*(1-exp(-t/3)); //x(t) for part (b)

//(c)
w1bar=500;w2bar=100; //flow rate changes, rest remains same
wbar=w1bar+w2bar;
tau=3;
x0=0.5;  
Cstarc=(w1bar*x1bar+w2bar*x2bar)/wbar;  //C* variable
printf('\n (c) The value of C* is %f',Cstarc)
printf('\n x(t)=0.5exp(-t/3)+%f(1-exp(-t/3)) \n',Cstarc);
xtc=0.5*exp(-t/3)+Cstarc*(1-exp(-t/3));

//(d)
w1bar=500;w2bar=100;x1bar=0.6;x2bar=0.75; //flow rate changes, rest remains same
wbar=w1bar+w2bar;
tau=3;
x0=0.5;  
Cstard=(w1bar*x1bar+w2bar*x2bar)/wbar;  //C* variable
printf('\n (d) The value of C* is %f',Cstard)
printf('\n x(t)=0.5exp(-t/3)+%f(1-exp(-t/3)) \n',Cstard);
xtd=0.5*exp(-t/3)+Cstard*(1-exp(-t/3));

plot2d(t,[xtd',xtb',xtc'])
xtitle('Parts b through d','Time(min)','$x(t)$');
a=legend("$(d)$","$(b)$","$(c)$",position=1);
a.font_size=5;
a=get("current_axes");b=a.title;b.font_size=5;c=a.x_label;c.font_size=5;
c=a.y_label;c.font_size=5;

//(e)
xNb=(xtb-x0)/(Cstarb-x0); //Normalized response for part b
xNc=(xtc-x0)/(Cstarc-x0); //Normalized response for part c
xNd=(xtd-x0)/(Cstard-x0); //Normalized response for part d

scf() //Creates new window for plotting
plot2d(t,[xNd',xNb',xNc'],style=[1 1 1])  
//Style sets the color, -ve values means discrete plotting, +ve means color
xtitle('Part e','Time(min)','Normalized response');
a=legend("$(e)$",position=1);
a.font_size=5;
a=get("current_axes");b=a.title;b.font_size=5;c=a.x_label;c.font_size=5;
c=a.y_label;c.font_size=5;
