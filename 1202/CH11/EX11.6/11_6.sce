clear
clc

//Example 11.6
disp('Example 11.6')

//Drawing on example 11.4
s=%s;
theta=1;tau=100;K=100;
delay=(1-theta/2*s+theta^2/10*s^2-theta^3/120*s^3)/(1+theta/2*s+theta^2/10*s^2+theta^3/120*s^3);//Third order pade approx
G=K*delay/(tau*s+1);

Kc=0.556;taui=5;

Gc=Kc.*(1+(1)./([taui]*s))
G_CL=syslin('c',Gc*G./(1+Gc*G));
t=0:0.1:20;
y1=csim('step',t,G_CL);
y1(:,1:theta/0.1)=0;//accounting for time delay--this is required otherwise
//an unrealistic inverse response is seen due to the pade/taylor approx

beta=0.5;
G_CL2=syslin('c',(Gc+beta-1)*G./(1+Gc*G));//This can be obtained on taking
//laplace transform of eqn 11-39 and making a block diagram 
//In Eqn 11-39 p refers to input to the process
t=0:0.1:20;
y2=csim('step',t,G_CL2);
y2(:,1:theta/0.1)=0;//accounting for time delay--this is required otherwise
//an unrealistic inverse response is seen due to the pade/taylor approx

plot(t,[y1; y2]);
xgrid()
xtitle('Ex-11.3 Tracking problem','Time(min)','y(t)');
a=legend("$\beta=1$","$\beta=0.5$",position=4);
a.font_size=2;
a=get("current_axes");b=a.title;b.font_size=5;c=a.x_label;c.font_size=5;
c=a.y_label;c.font_size=5;

//Note that there is a slight mis-match between the plots obtained from scilab code
//and that of the book because of third order pade approximation
//The plots in the book have been produced using advanced proprietary software
//which supports using exact delays while scilab does not have that functionality
