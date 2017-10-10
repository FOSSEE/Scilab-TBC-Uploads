clc;
T=80; // total duration 
t1=5-0; // duration of first increasing loading period
t2=36-5; // duration of second increasing loading period
t3=39-36; // duration of first decreasing loading period
t4=55-39; // duration of second decreasing loading period
t5=80-55; // duration of uniform loading
l1=150; // initial load
l2=1000; // load at 5th sec
l3=1400; // load at 36th sec
l4=300; // load at 39th sec
l5=150; // load during uniform loading
T1=(t1/3)*(l1^2+l2^2+l1*l2); // term 1 for evaluating rms power
T2=(t2/3)*(l2^2+l3^2+l2*l3); // term 2 for evaluating rms power
T3=(t3/3)*(l3^2+l4^2+l3*l4); // term 3 for evaluating rms power
T4=(t4/3)*(l4^2+l5^2+l4*l5); // term 4 for evaluating rms power
T5=t5*l5^2; // term 5 for evaluating rms power
R=sqrt((1/T)*(T1+T2+T3+T4+T5));
printf('As per the load time graph rating is %f KW',R); 
disp('Choose a motor of rating above the calculated rating');
