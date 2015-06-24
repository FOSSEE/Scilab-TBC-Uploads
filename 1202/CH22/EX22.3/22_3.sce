
clear
clc

//Example 22.3
disp('Example 22.3')

//Parameters
p1=0.028735;p2=0.028344;p3=5.035E-5;V1=12;n=0.0926;
Ib=15;//basal
Gb=81;

//Diet function
function D=D(t)
    D=9*exp(-0.05*t);
endfunction


//ODE model
function ydot=model(t,y,U)
    G=y(1);X=y(2);I=y(3);
    Gdot=-p1*G-X*(G+Gb)+D(t);
    Xdot=-p2*X+p3*I;
    Idot=-n*(I+Ib)+U/V1;
    ydot=[Gdot Xdot Idot]';
endfunction


t=0:0.1:400;t0=0;
y0=[0 0 0]';//G,X,I are deviation variables

U=0;
y = Gb+ode(y0, t0, t, list(model,U))
subplot(3,1,1);
plot(t,y(1,:));
xtitle("","Time(min)","Glucose (mg/L)")
legend("$U=0\ mU/min$")

U=15;
y =Gb+ ode(y0, t0, t, list(model,U))
subplot(3,1,2);
plot(t,y(1,:));
xtitle("","Time(min)","Glucose (mg/L)")
legend("$U=15\ mU/min$")

U=25;
y = Gb+ode(y0, t0, t, list(model,U))
subplot(3,1,3);
plot(t,y(1,:));
xtitle("","Time(min)","Glucose (mg/L)")
legend("$U=25\ mU/min$")

