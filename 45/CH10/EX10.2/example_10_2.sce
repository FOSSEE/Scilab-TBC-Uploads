//example 10.2
clc;
clc
c=128; // given counters 
d=32;
e=64;
fc=log2(c);//making necessar calculations 
fd=log2(d);
printf('A mod-128 conter should have %d flipflops\n', fc);
printf(' A mod-32 conter should have %d flipflops\n', fd); //displaying the results 
fe=log2(e);
n=2^fe - 1 ;
printf(' The largest decimal no that can be stored in a mod-64 counter is %d',n);




