clear
clc

//Example 15.2
disp('Example 15.2')

s = %s;
theta=1 //delay
delay=(1-theta/2*s+theta^2/12*s^2)/(1+theta/2*s+theta^2/12*s^2);//Second order pade approx
G=1/((5*s+1)*(3*s+1));
Gp=[G;delay*G];//Both models with and without delay
Gc=[3.02*(1+1/(6.5*s));1.23*(1+1/(7*s))];
G_CL=syslin('c',(Gp.*Gc)./(1+Gp.*Gc))
t=0:0.01:40;
yt=csim('step',t,G_CL)

plot2d(t',yt') //For plotting multiple graphs in one command make sure time is n*1 vector 
//while yt is n*p vector where p are the no. of plots
xtitle('Example-15.2','Time(min)','$y(t)$');
xgrid(); 
a=legend("delay=0","delay=1",position=4);
a.font_size=2;
a=get("current_axes");b=a.title;b.font_size=5;c=a.x_label;c.font_size=5;
c=a.y_label;c.font_size=5;
