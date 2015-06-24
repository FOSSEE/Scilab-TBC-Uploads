clear;
clc;

//Example3.14[Heat Transfer between Hot and Cold Water pipes]
//Given:-
T_hot=70;//Surface Temperature of hot pipe[degree Celcius]
T_cold=15;//Surface Temperature of cold pipe[degree Celcius]
L=5;//Length of both pipes[m]
D=0.05;//Diameter of both the pipes[m]
z=0.3;//Distance between centreline of both the pipes[m]
k=0.75;//Thermal Conductivity of the concerte[W/m.degree Celcius]
//Solution:-
//Calculating Shape Factor
S=(2*%pi*L)/(acosh(((4*(z^2))-(D^2)-(D^2))/(2*D*D)));//[m]
disp("m",S,"Shave factor for given configuration is")
Q_=S*k*(T_hot-T_cold);//[W]
disp("W",Q_,"The steady rate of heat transfer between the pipes becomes")
