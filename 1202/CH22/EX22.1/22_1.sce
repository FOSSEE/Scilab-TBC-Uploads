clear
clc

//Example 22.1
disp('Example 22.1')

//Parameters
Yxs=0.4;B=0.2;Pm=50;Ki=22;
a=2.2;mu_m=0.48;Km=1.2;Sf=20;


//ODE model
function ydot=model(t,y,D)
    X=y(1);S=y(2);P=y(3);
    
    Xdot=-D*X+mu(S,P)*X;
    Sdot=D*(Sf-S)-1/Yxs*mu(S,P)*X;
    Pdot=-D*P+[a*mu(S,P)+B]*X
    
    ydot=[Xdot Sdot Pdot]';
endfunction

//Rate law
function mu=mu(S,P)
    mu=mu_m*(1-P/Pm)*S/(Km+S+S^2/Ki);    
endfunction

t=0:0.1:100;t0=0;
y0=[6 5 19.14]';//Initial stable condition

D=0.202*1.1;//10% increase
y_up = ode(y0, t0, t, list(model,D))
D=0.202*0.9;//10% decrease
y_down = ode(y0, t0, t, list(model,D))

subplot(2,1,1);
plot(t,y_up(1,:),color='red');
plot(t,y_down(1,:));
xtitle("$D=0.202\ h^{-1}$","Time(h)","Biomass (g/L)")
legend("Dilution +10%","Dilution -10%")

subplot(2,1,2);
t=0:0.1:100;t0=0;
y0=[6 5 44.05]';//Initial stable condition
D=0.0389*1.1;//10% increase
y_up = ode(y0, t0, t, list(model,D))
D=0.0389*0.9;//10% decrease
y_down = ode(y0, t0, t, list(model,D))

plot(t,y_up(1,:),color='red');
plot(t,y_down(1,:))
xtitle("$D=0.0389\ h^{-1}$","Time(h)","Biomass (g/L)");
legend("Dilution +10%","Dilution -10%")
