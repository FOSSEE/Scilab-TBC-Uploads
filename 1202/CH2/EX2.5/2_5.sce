
clear
clc

//Example 2.5
disp('Example 2.5')

function ydot=CSTR(t,y,Tc) //y is [Conc Temp]' Tc is coolant temp
    q=100;ci=1;V=100;rho=1000;C=0.239;deltaHR=5E4;k0=7.2E10;UA=5E4;Er=8750;
    Ti=350;
    c=y(1);T=y(2);
    k=k0*exp(-Er/T);//Er=E/R
    ydot(1)=1/V*(q*(ci-c)-V*k*c);  //ydot(1) is dc_dt
    ydot(2)=1/(V*rho*C)*(q*rho*C*(Ti-T)+deltaHR*V*k*c+UA*(Tc-T))//ydot(2) is dT_dt
endfunction

c0=0.5;T0=350;
y0=[c0 T0]';
t0=0;
t=0:0.01:10;
Tc=[290 305];
y1 = ode(y0,t0,t,list(CSTR,Tc(1)));
y2 = ode(y0,t0,t,list(CSTR,Tc(2)));
y3=[0.5 0;0 350]*ones(2,length(t))
//Temp plot
subplot(2,1,1);
plot(t,[y1(2,:)' y3(2,:)' y2(2,:)']);
xtitle("Fig 2.7","Time(min)","Reactor Temp(K)");
legend("290 K","300 K","305 K")
//conc plot
subplot(2,1,2);
plot(t,[y1(1,:)' y3(1,:)' y2(1,:)']);
xtitle("Fig 2.8","Time(min)","Reactor conc(mol/L)");
legend("290 K","300 K","305 K");

