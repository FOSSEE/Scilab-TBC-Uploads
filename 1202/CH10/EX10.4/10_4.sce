clear
clc

//Example 10.4
disp('Example 10.4')

Km=1; //We take set point gain as 1 for illustrative purposes
Kc=[15 6 2]'; //different values of Kc for which we will simulate
Gc=Kc;
s=%s;
Gv=1/(2*s+1);
Gd=1/(5*s+1);
Gp=Gd;
Gm=1/(s+1);

G=Km*Gc*Gv*Gp./(1+Km*Gc*Gv*Gp*Gm); //Eqn 10-75 G=Y/Ysp

//Now we simulate the close loop process for these different values of Kc

G=syslin('c',G);
t=[0:0.1:20]'; //time in minutes
Y=csim('step',t,G)'; 

plot2d(t,Y,rect=[0,-2,20,4])
plot2d(t,ones(length(t),1),style=5)
xtitle('Ex-10.4','Time(min)','y(t)');
a=legend("Kc=15","Kc=6","Kc=2",position=3);
a.font_size=2;
a=get("current_axes");b=a.title;b.font_size=5;c=a.x_label;c.font_size=5;
c=a.y_label;c.font_size=5;


