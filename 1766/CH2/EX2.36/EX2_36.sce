clc;funcprot(0);//Example 2.36
//Initilisation of Variables
t=0.001;....//Thickness of copper plate in m
w=1;....//width of copper plate in m
L=0.01;....//Height of plate in m
Tb=230;....//temparature of copper plate in degrees celcius
K=380;....//thermal conductivity of copper plate in W/m*degrees celcius 
Ta=30;....//temparature of ambient air in degrees celcius
h=40;....//heat transfer coefficient in W/m^2
n=125;...//fins for meter
//calculations
A=t*w;.....//area of the plate in m^2
m=(sqrt((2*h)/K*t))*1000;...//
tetab=Tb-Ta;...//change of temparature in degrees celcius
Qf=n*tetab*K*A*m*tanh(m*L);....//heat transfer through fin in W
Qunfin=((1-n)*t)*h*tetab;...//heat transferd through unfinned area in W
Qtot=Qf+Qunfin;....//total heat transfered in W
Qmax=n*(w*L*2)*h*tetab;....//Maximum heat transfer rate in W
E=Qf/Qmax;....//efficiency of fin
Q=(A*1000*h*tetab);....//Heat transfer without fin
disp(E,"efficiency of fin")
disp(Qmax,"heat transfer for square meter in W")
disp(Q,"heat transfer without fin in W")
