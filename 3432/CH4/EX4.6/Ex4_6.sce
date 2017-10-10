//Example 4.6 
//PID Control of DC Motor Speed.

//------------------------------------------------------------------
//NOTE THAT--

//The model as given in matlab program for this example in the book is

//num=Ra*s + La*s^2 ;
//den=Ke*ki + (Ra*Ke*Ke+Ke*kp)*s + (Ra*b+Ke*Ke+Ke*kd)*s^2 + Jm*La*s^3;

//this does not match to the model of DC motor given on page 43. 
//Also, if we assume this model, disturbance response given 
//in figure 4.13 (a) 
//is different from expected.
//For instance, with P control, output should asymptotically go to 0
//for disturbance step input, because numerator is s(Ra + La*s) 
//and system is type 0 (no pole at origin).
//i.e. y(inf)=lim s->0 s*Y(s)= s*[s(Ra + La*s)/den]*1/s=0;

//In following code, we have considered correct model of DC motor as 
//given on page 43. Note that, this model must have been used 
//by authors of the book for 
//step reference tracking as it is correctly shown in figure 4.13 (b)

//------------------------------------------------------------------
xdel(winsid())//close all graphics Windows
clear;
clc;

//------------------------------------------------------------------
// System parameters
Jm=0.0113; // N-m-s^2/rad
b=0.028;   // N-m-s/rad
La=0.1;    // henry
Ra=0.45;   // ohms
Kt=0.067   // n-m/amp
Ke=0.067;  // V-sec/amp

// Controller parameters
kp=3;
ki=15;    // sec^-1
kd=0.3;   // sec

// DC Motor Transfer function as given on page 43 of book (edition 5)
//G=Kt/[Jm*La s^2 + (Jm*Ra + La*b)s +(Ra*b +Kt*Ke)]
s=%s;
num=[Kt];
den=[(Ra*b +Kt*Ke) (Jm*Ra + La*b) Jm*La];
Ns=poly(num,'s','coeff');
Ds=poly(den,'s','coeff');
G=syslin('c',Ns/Ds)

//PID controller, Gc=(kd s^2 + kp s + ki)/s
num=[ki kp kd;ki kp 0;0 kp 0]; //numerator parameters of controller)
                                 //(row wise for PID, PI and P)
den=[0 1];                    //denominator parameters of controller
Ds=poly(den,'s','coeff');    //denominator polynomial of controller
t=0:0.005:10;               // Simulation time
//------------------------------------------------------------------
//Step disturbance response with P, PI and PID controller. 

for i=1:3
Ns=poly(num(i,:),'s','coeff');//numerator polynomial of controller
sysG=syslin('c',Ns/Ds);
sysD=G/. sysG;
v(i,:)=csim('step',t,sysD);
end
plot(t',v');
//Title, labels and grid to the figure
exec .\fig_settings.sci; //custom script to set the figure properties
title('Responses of P,PI and PID control to step disturbance...
 input','fontsize',3)
xlabel('Time t (sec.)','fontsize',2)
ylabel('Amplitude','fontsize',2)
hl=legend(['PID','PI','P']);

//------------------------------------------------------------------
//Reference step response

figure
for i=1:3
Ns=poly(num(i,:),'s','coeff');
Gc=syslin('c',Ns/Ds);
// Step reference response with P, PI and PID controller.
sysR=G*Gc/(1+G*Gc);
v(i,:)=csim('step',t,sysR);
end
plot(t',v')
//Title, labels and grid to the figure
exec .\fig_settings.sci; //custom script to set the figure properties
title('Responses of PID control to step reference input','fontsize',3)
xlabel('Time t (sec.)','fontsize',2)
ylabel('Amplitude','fontsize',2)
hl=legend(['PID','PI','P']);

//------------------------------------------------------------------
