//ques-16.1
//Calculating rate constant of a reaction
clc
//t = Time in minutes
//c = KMnO4 in mL
t1=0; c1=37;
t2=5; c2=29.8;
t3=15; c3=19.6;
t4=25; c4=12.3; 
t5=45; c5=5;
a=c1;
k2=(2.303/t2)*log10(a/c2);
k3=(2.303/t3)*log10(a/c3);
k4=(2.303/t4)*log10(a/c4);
k5=(2.303/t5)*log10(a/c5);
k=(k2+k3+k4+k5)/4;
printf("The reaction is of First order with average value of rate constant being %.6f /min.",k);
