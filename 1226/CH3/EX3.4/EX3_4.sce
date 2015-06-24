clc;funcprot(0);//EXAMPLE 3.4
// Initialisation of Variables
eta=1/6;...................//Efficiency of the engine
rts=70;.................//The amount of temp which is reduced in the sink in C
//Calculation
t1byt2=1/(1-eta);
t2=(rts+273)/((2*eta*t1byt2)-t1byt2+1);............//Temperature of the sink in K
disp(t2-273,"Temperature of the sink in Celsius:")
t1=t1byt2*t2;...............//Temperature of source in K
disp(t1-273,"temperature of source in Celsius:")
