clear
clc

//Example 8.2
disp('Example 8.2')

//Eqn 8-6

//Pump characteristics
q=0:0.1:240;
Phe=30*(q/200).^2;
plot2d(q,Phe,rect=[0,0,240,40]);
xgrid()
xtitle("Fig 8.13 Pump characteristics","q,gal/min","P,psi")
scf();

q=200;//Flow rate in gal/min
Phe=30*(q/200).^2;
Pv=40-Phe; //Eqn 8-8


//(a)
l=0.5;Pv=10;
Cv=q/l/sqrt(Pv); 

mprintf("(a) The value of coefficient Cv is %f",Cv)

//plotting valve characteristic curve

l=[0:0.01:0.8]';
n=length(l);
Cv=125;

function y=valve_1(q)
    Pv=40-30*(q/200).^2;
y=Cv*l.*sqrt(Pv)-q;
endfunction

[q_valve1,f1]=fsolve(200*ones(n,1),valve_1); //200*ones(n,1) is the initial guess for q

plot2d(l,q_valve1);

//(b)
q=200*110/100; //110% flow rate
Phe=30*(q/200).^2;
Pv=40-Phe; //Eqn 8-8
l=1;
Cv=q/sqrt(Pv)/l;
mprintf("\n(b) The value of coefficient Cv is %f",Cv)

//We use Cv=115;
Cv=115;
l=[0.2:0.01:0.9]';
n=length(l);
R=50;

function y=valve_2(q)
    Pv=40-30*(q/200).^2;
    y=[R^(l-1)]*Cv.*sqrt(Pv)-q;
endfunction
[q_valve2,f2]=fsolve(150*ones(n,1),valve_2);
plot2d(l,q_valve2,style=2)

//(c)
Cv=1.2*115;
mprintf("\n(c) The value of coefficient Cv is %f",Cv)

l=[0.2:0.01:0.9]';
n=length(l);
R=50;

function y=valve_3(q)
    Pv=40-30*(q/200).^2;
    y=[R^(l-1)]*Cv.*sqrt(Pv)-q;
endfunction
[q_valve3,f3]=fsolve(linspace(60,200,n)',valve_3); //Initial guess has to be smart for each valve, 
//since we want near linear profile we can give a linear initial guess
plot2d(l,q_valve3,style=3)

//(d)
Cv=0.8*115;
mprintf("\n(c) The value of coefficient Cv is %f",Cv)

l=[0.2:0.01:0.9]';
n=length(l);
R=50;

function y=valve_4(q)
    Pv=40-30*(q/200).^2;
    y=[R^(l-1)]*Cv.*sqrt(Pv)-q;
endfunction
[q_valve4,f4]=fsolve(linspace(60,200,n)',valve_4); //Initial guess has to be smart for each valve, 
//since we want near linear profile we can give a linear initial guess
plot2d(l,q_valve4,style=4,rect=[0,0,1,240])

xtitle('Ex-8.2 Installed valve characteristics','$l$','q gal/min');
a=legend("Valve 1, linear Cv=125","Valve 2, Equal% Cv=115","Valve 3, Equal% Cv=138","Valve 4, Equal% Cv=92",position=4);
a.font_size=2;
a=get("current_axes");b=a.title;b.font_size=3;c=a.x_label;c.font_size=5;
c=a.y_label;c.font_size=5;

