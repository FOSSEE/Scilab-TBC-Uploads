clc
//to calculate probability
x1=0.45 //x1=0.45*L
x2=0.55       //x2=0.55*L
n=1                     //for ground state 
//formula is P=integrate('(2/L)*sin(n*%pi*x)^2),'x',x1,x2)
P1=integrate('2*(sin(n*%pi*x)^2)','x',x1,x2)
disp("P1="+string(P1)+"unitless")
probability1=P1*100
disp("probability for the ground states is probability1 ="+string(probability1)+"%")
n=2            //for first excited state
P2=integrate('2*(sin(n*%pi*x)^2)','x',x1,x2)
disp("P2="+string(P2)+"unitless")
probability2=P2*100 
disp("probability for first excited states is probability2="+string(probability2)+"%")
