//To Determine Probabilities Using Markovian Principle
//Page 619
clc;
clear;

//Conditional Probabilites Present Future
Pdd=2/100; //Down Down
Pud=5/100; //Up Down
Pdu=1-Pdd; //Down up
Puu=1-Pud; //Up Up

P=[Pdd,Pdu;Pud,Puu]; //Transition Matrix

printf('\na) The Conditional Probabilites for\n')
printf('Transformers Down in Present and Down in Future is %g\n',Pdd)
printf('Transformers Down in Present and Up in Future is %g\n',Pdd)
printf('Transformers Up in Present and Down in Future is %g\n',Pdd)
printf('Transformers Up in Present and Up in Future is %g\n',Pdd)
printf('\nb) The Transition Matrix is\n')
disp(P)
printf('\nc) The Transition Diagram can be viewed with the result file attached to this code\n')
