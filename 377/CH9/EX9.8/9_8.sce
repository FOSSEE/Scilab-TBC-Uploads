disp("I=Is*(exp(e*Va/(K*T)-1))");
Is=1*10^-6;
a=0.025875;  //say a=K*T/q
Va=0.2;
I=Is*(exp(Va/a)-1);
printf('\n The value of I is %f A',I);
rdc=Va/I;
printf('\n The value of rdc is %f ohm',rdc);
rac=a/I;
printf('\n The value of rac is %f ohm',rac);