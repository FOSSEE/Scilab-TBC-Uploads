clear
clc

//Example 10.3
disp('Example 10.3')

//This example draws upon the calculations of Ex 10.2 and hence it has been 
//reproduced
A=%pi*0.5^2; //Square meters
R=6.37;
Kp=R//min/sq.m=R
tau=R*A;
Km=100/2 //% per meter
l=0.5;
q=0.2*30^(l-1);
dq_dl=0.2*log(30)*30^(l-1); //cu.meter/min Eqn 10-48
Kip=(15-3)/100;//psi/%
dl_dpt=(1-0)/(15-3); //psi^-1
Kv=dq_dl*dl_dpt //Eqn 10-50
Kc=[4 8 20]'; //different values of Kc that we have to try
K_OL=Kc*Kip*Kv*Kp*Km;//Open loop gain Eqn 10-40
K1=K_OL./(1+K_OL);//Eqn 10-38
tau1=tau./(1+K_OL); //Eqn 10-39

//========Example 11.3 now starts here========//
//Now we simulate the close loop process for these different values of K2 and tau1
M=0.05;//Magnitude of step
K2=Kp./(1+K_OL);
s=%s;
G=K2./(tau1*s+1);
G=syslin('c',G);
t=[0:0.1:10]'; //time in minutes
hdash=M*csim('step',t,G)'; 

plot2d(t,hdash,rect=[0,0,10,0.2])
xgrid()
xtitle('Ex-10.3','Time(min)','h');
a=legend("Kc=4","Kc=8","Kc=20",position=4);
a.font_size=2;
a=get("current_axes");b=a.title;b.font_size=5;c=a.x_label;c.font_size=5;
c=a.y_label;c.font_size=5;

offset=-Kp*M./(1+K_OL);

mprintf("   Kc    Offset")
mprintf("\n%f   %f",[Kc offset])

mprintf("\n\nNote that the book has a mistake in the question and legend of fig 10.19\n...
the values of Kc should be 4,8,20 and not 1,2,5\n...
this mistake is there because in the second edition of the book\n...
Kc has values 1 2 5 but then level transmitter span is 0.5 instead of 2")






