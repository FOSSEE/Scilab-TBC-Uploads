//write down dcf of the following state space
A =[0 1 0;0 0 1; -6 -11 -6]
T =[1 1 1;-1 -2 -3;1 4 9]
Adcf =inv(T)*A*T
disp (Adcf ,"Adcf=")
