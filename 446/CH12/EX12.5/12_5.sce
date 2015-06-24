clear
clc
disp('Exa -12.5(a)');
t12=2.7*24*3600;              //converting days into seconds
w=0.693/t12;                  //lambeda
printf('The decay constant is %e\n /sec',w); 
disp('Exa -12.5(b)');
printf('The decay constant is equal to probability of decay in one second hence %e \n',w);
disp('Exa -12.5(c)');
m=10^-6;Na=6.023*10^23; M=198;     //given values and constants
N=m*Na/M;                        //number of atoms in the sample 
Ao=w*N;             //activity
printf('The activity was found out to be %e Ci',Ao);        
disp('Exa -12.5(d)');
t=7*24*3600;         //given time
A=Ao*%e^-(w*t);        //activity
printf('The activity after one week was found out to be %.2e decays/sec',A);