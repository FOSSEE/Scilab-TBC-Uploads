//Find an expression for the current-gain ratio Ai ¼ iL=is and evaluate it
//Example 6.2 page no 175
clear
clc
a=0.99//alpha
Rc=4*10^3       //kΩ
Rl=4*10^3       //kΩ
Re=5*10^3       //kΩ
re=30           //Ω
rb=300          //Ω
Ai=(a*Rc*Re)/((Rc+Rl)*(Re+re+(1-a)*rb))
printf("\n The value of Ai=%0.3f " ,Ai)

