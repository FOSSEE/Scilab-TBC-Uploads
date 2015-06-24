clear
clc

//Example 10.2
disp('Example 10.2')

A=%pi*0.5^2; //Square meters
R=6.37;
Kp=R//min/sq.m=R
tau=R*A;

Km=100/2; //% per meter

l=0.5;
q=0.2*30^(l-1);
dq_dl=0.2*log(30)*30^(l-1); //cu.meter/min Eqn 10-48

Kip=(15-3)/100;//psi/%
dl_dpt=(1-0)/(15-3); //psi^-1

Kv=dq_dl*dl_dpt //Eqn 10-50

Kc=[4 8 20]'; //different values of Kc that we have to try
K_OL=Kc*Kv*Kp*Km*Kip;//Open loop gain Eqn 10-40

K1=K_OL./(1+K_OL);//Eqn 10-38
tau1=tau./(1+K_OL); //Eqn 10-39

//Now we simulate the close loop process for these different values of K1 and tau1
s=%s;
G=K1./(tau1*s+1);
G=syslin('c',G);
t=[0:0.1:10]'; //time in minutes
hdash=csim('step',t,G)'; 

plot2d(t,hdash,rect=[0,0,10,1.25])
xgrid()
xtitle('Ex-10.2','Time(min)','h(t)');
a=legend("Kc=4","Kc=8","Kc=20",position=4);
a.font_size=2;
a=get("current_axes");b=a.title;b.font_size=5;c=a.x_label;c.font_size=5;
c=a.y_label;c.font_size=5;



