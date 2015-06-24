//chapter 5
//example 5.16
//page 451
clear;
clc;
disp("example 5.16")
V=6600;
ph=3;  //3-phase alternators 
power=10000; //total load
disp("Two alternators in parallel connection");
pf=0.8;
Ia=438;       //armature current
Il=(power*1000)/(sqrt(3)*V*pf);   //load current
printf("load current=  %fA\n\n",Il);
phi=acosd(pf);
Ac=(Il*cosd(phi));
Rc=(Il*sind(phi));
printf("Active component of current=  %fA\n",Ac);
printf("Reactive component of current=  %fA\n",Rc);
printf("Current supplied by each alternator=%fA\n",(Il/2));
printf("Active component of current supplied by each alternator=  %fA\n",(Ac/2));
printf("Reactive component of current supplied by each alternator=  %fA\n\n",(Rc/2));
disp("Since steam supply is same,the active component remain the same ");
RIl=sqrt(Ia^2-(Ac/2)^2);
printf("Reactive component of Il= %dA\n",RIl);
RI2=(Rc-RIl);
printf("reactive component of I2=  %fA\n",RI2);
I2=sqrt((Ac/2)^2+(RI2)^2);
printf(" I2=  %fA\n",I2);
phi_2=atand(RI2/(Ac/2));
printf("phi 2=  %f degrees\n",phi_2);
printf("cos phi 2= %f",cosd(phi_2));
