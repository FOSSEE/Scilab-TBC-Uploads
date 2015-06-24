//Chapter 12
//Example 12.11
//page 488
//To plot swing curves for fault cleared at 0.275s and 0.08s of a multimachine system
clear;clc;

xd1=%i*0.067;xd2=%i*0.1;

//primitive admittances of the lines
y45=1/(0.018+%i*0.11);    B45=%i*0.113;
y51=1/(0.004+%i*0.0235);   B51=%i*0.098;
y41=1/(0.007+%i*0.04);    B41=%i*0.041;
z24=(%i*0.022);
z35=(%i*0.04);

//Bus data and prefault load-flow values in PU
V1=1.0;                    P1=-3.8083;    Q1=-0.2799;    Pl1=0;    Ql2=0;
V2=1.0194+%i*0.1475;       P2=3.25;       Q2=0.6986;     Pl2=0;    Ql2=0;
V3=1.0121+%i*0.1271;       P3=2.10;       Q3=0.3110;     Pl3=0;    Ql3=0;
V4=1.0146+%i*0.0767;        P4=0;          Q4=1.0;        Pl4=1.0;  Ql4=0.44;
V5=1.0102+%i*0.0439;       P5=0;          Q5=0;          Pl5=0.5;  Ql5=0.16;


// To find voltage behind transient reactances before the occurance of fault

I2=(P2-%i*Q2)/(V2');
E2=V2+I2*xd1;
E1=V1;
I3=(P3-%i*Q3)/(V3');
E3=V3+I3*xd2;

//converting loads into their admittances
Yl4=(Pl4-%i*Ql4)/(V4*V4');
Yl5=(Pl5-%i*Ql5)/(V5*V5');

//forming augmented Bus admittance matrix before the occurance of fault
Y11=y41+y51;Y12=0;Y13=0;Y14=-y41;Y15=-y51;
Y21=Y12;Y22=1/(xd1+z24);Y23=0;Y24=-(1/(z24+xd1));Y25=0;
Y31=0;Y32=0;Y33=1/(z35+xd2);Y34=0;Y35=-1/(z35+xd2);
Y41=Y14;Y42=Y24;Y43=Y34;Y44=y41+Yl4+y45+B45+B41-Y24;Y45=-y45;
Y51=Y15;Y52=Y25;Y53=Y35;Y54=Y45;Y55=Yl5+y45+y51+B45+B51-Y35;

Ybus=[Y11 Y12 Y13 Y14 Y15;
      Y21 Y22 Y23 Y24 Y25;
      Y31 Y32 Y33 Y34 Y35;
      Y41 Y42 Y43 Y44 Y45;
      Y51 Y52 Y53 Y54 Y55];
      
printf('\n Augmented prefault bus admittance matrix (in PU) is given by\n\n Ybus=\n');
disp(Ybus);
///////to find the Ybus during fault
Ybus_1=Ybus([1:3,5],[1:3,5]);
n=4
for k=1:n-1
    for j=1:n-1
        Ybus_during_fault(k,j)=Ybus_1(k,j)-(Ybus_1(k,n)*Ybus_1(n,j))/Ybus_1(n,n);
    end
end
printf('\n\n\n Bus admittance matrix during fault (in PU) is given by\n\n Ybus_during_fault=\n');
disp(Ybus_during_fault);

//to find Ybus after the fault has been cleared
Y45=0;Y54=0;Y44=Y44-y45-B45;Y55=Y55-y45-B45;
Ybus_2=[Y11 Y12 Y13 Y14 Y15;
      Y21 Y22 Y23 Y24 Y25;
      Y31 Y32 Y33 Y34 Y35;
      Y41 Y42 Y43 Y44 Y45;
      Y51 Y52 Y53 Y54 Y55];
      
//eliminating node 5 from Ybus_2 
n=5
for k=1:n-1
    for j=1:n-1
        Ybus_3(k,j)=Ybus_2(k,j)-(Ybus_2(k,n)*Ybus_2(n,j))/Ybus_2(n,n);
    end
end

//eliminating node 4 to get post fault Ybus
n=4
for k=1:n-1
    for j=1:n-1
        Ybus_post_fault(k,j)=Ybus_3(k,j)-(Ybus_3(k,n)*Ybus_3(n,j))/Ybus_3(n,n);
    end
end
printf('\n\n\n Bus admittance matrix postfault (in PU) is given by\n\n Ybus_post_fault=\n');
disp(Ybus_post_fault);
printf('\n\n\n');
//During fault power angle equation
delta3=0:0.1:180;
Pe2f=0;
Pe3f=(abs(E3'))^2*real(Ybus_during_fault(3,3))+abs(E1')*abs(E3')*abs(Ybus_during_fault(3,1))*cosd(delta3-atand(imag(Ybus_during_fault(1,3))/real(Ybus_during_fault(1,3))));

//Postfault power angle equations
delta2=0:0.1:180;
Pe2pf=(abs(E2'))^2*real(Ybus_post_fault(2,2))+abs(E1')*abs(E2')*abs(Ybus_post_fault(2,1))*cosd(delta2-atand(imag(Ybus_post_fault(1,2))/real(Ybus_post_fault(1,2))));
Pe3pf=(abs(E3'))^2*real(Ybus_post_fault(3,3))+abs(E1')*abs(E3')*abs(Ybus_post_fault(3,1))*cosd(delta3-atand(imag(Ybus_post_fault(1,3))/real(Ybus_post_fault(1,3))));

//mechanical inputs which are assumed to be constant are given by
Pm2=max(real(E2*I2'));
Pm3=max(real(E3*I3'));

//xdot function defining the swing equations of each of the machines
function xdot=mac2(t,x,tc)
    xdot(1)=x(2);
    if t>tc then
      xdot(2)=180*50*(Pm2-(0.6012+8.365*sind(x(1)-1.662)))/12;//swing equation after clearing the fault
    else
        xdot(2)=180*50*(Pm2-(0))/12;  //swing equation before clearing the fault
    end
    
endfunction

function xdot=mac3(t,x,tc)
    xdot(1)=x(2);
    if t>tc then
      xdot(2)=180*50*(Pm3-(0.1823+6.5282*sind(x(1)-0.8466)))/9;//swing equation after clearing the fault
    else
        xdot(2)=180*50*(Pm3-(0.1561+5.531*sind(x(1)-0.755)))/9; //swing equation before clearing the fault
    end
    
endfunction

//to find the solution of swing equation to draw the swing curves

//to draw the swing curves for machines 2 and 3 for example12.11 for clearing at 0.275 sec
subplot(2,1,1)
x_1_0=[19.354398,0]';t0=0; T=0:0.01:1;T=T';
x_2_0=[18.2459,0]';tc=0.275;
sol1=ode(x_1_0,t0,T,mac2);
sol2=ode(x_2_0,t0,T,mac3);

plot(T(1:20),sol1(1,1:20)',T,sol2(1,:)');
set(gca(),"grid",[1 1]);
legend('Machine 2','Machine 3',[,1]);
title('Swing Curves for machines 2 and 3 of Example 12.11 for a clearing at '+string(tc)+' s');
xstring(0.55,59,'Machine 1 is reference (infinte bus)');
xlabel('Time (in seconds)----->');
ylabel('Torque Angle (delta,deg)----->');


//to draw the swing curves for machines 2 and 3 for example12.11 for clearing at 0.08 sec
subplot(2,1,2)
x_1_0=[19.354398,0]';t0=0; T=0:0.01:1;T=T';
x_2_0=[18.2459,0]';tc=0.08;
sol1=ode(x_1_0,t0,T,mac2);
sol2=ode(x_2_0,t0,T,mac3);

plot(T,sol1(1,:)',T,sol2(1,:)');
set(gca(),"grid",[1 1]);
legend('Machine 2','Machine 3',[,4]);
title('Swing Curves for machines 2 and 3 of Example 12.11 for a clearing at '+string(tc)+' s');
xstring(0.44,43,'Machine 1 is reference (infinte bus)');
xlabel('Time (in seconds)----->');
ylabel('Torque Angle (delta,deg)----->');

f=get("current_figure");
f.figure_position=[0,15];
f.figure_size=[565,1000];















