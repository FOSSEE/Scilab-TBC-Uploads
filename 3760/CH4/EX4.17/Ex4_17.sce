clc;
// table is given in question for plotting magnetising curve
if1=[ 0 0.2 0.4 0.6 1 1.4 1.8 2 ];
Ea=[ 6 40 80 120 194 246 269 274]; 
plot(if1,Ea);
xlabel('If');
ylabel('Ea');
title('magnetising curve')
v=230; // rated voltage of generator
p=10000; // rated power of generator
n=1500; // rated speed of generator
rf=184; // shunt field resistance
ra=0.443; // armature resistance
ifl=1.7; // rated field current
il=p/v; // full load current
printf('Total armature current is %f A\n',il+ifl);
printf('Armature resistance drop is %f ohms\n',(il+ifl)*ra);
disp('In fig 4.17(textbook),AB is made equal to armature resistance drop then through B a horizontal line is made meeting curve at c');
disp('Demagnetising effect is given by BC which is equal to 0.25 A');
