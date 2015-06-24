clear    
clc
disp('Exa-2.6(a)');
L=65; c=3*10^8;u=0.8*c;      
t=L/u ;          //The value of time taken as measured by the observer
printf('The time for rocket to pass a point as measured by O is %.2e.\n',t);         //The value of time taken as measured by the observer
disp('Exa-2.6(b)');
Do=65;                             //given length
Lo= L/sqrt(1-(u/c)^2);                 //contracted length of rocket
printf('Actual length according to O is %.2f.\n',Lo);
disp('Exa-2.6(c)');
D=Do*(sqrt(1-(u/c)^2));       //contracted length of platform.
printf('Contracted length according to O'' is %.2e.\n',D);
disp('Exa-2.6(d)');
t1=Lo/u;                    //time needed to pass according to O'.
printf('Time taken according to O is %.2e.\n',t1);
disp('Exa-2.6(e)');
t2=(Lo-D)/u;                   //time intervals between the two instancs
printf('Time taken according to O'' is %.2e.\n',t2);
disp('The value of t1 and t2 did not match');
