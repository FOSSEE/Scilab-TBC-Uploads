clc;
clear all; 
disp("Heat loss in pipe")
ri=0.04;//m inner radius of pipe
ro=0.05;//m outer radius of pipe
ti=160;// degree C temperature of hot gases
to=25;// degree C temperature of space in which the pipe is located
k=180;// W/(m*C)
L=1;//m

Q=(ti-to)/(log(ro/ri)/(2*3.1416*k*L))
disp("W/m",Q,"the heat loss through pipe per unit length =")

r=(ri+ro)/2;//m midway between inner and outer surfaces
r
disp("m")
R=(log(r/ri))/(2*3.1416*k)
t=ti-Q*R;
disp("degree C",t,"temperature at a point halfway inner radius of pipe =")

Am=2*3.1416*L*(ro-ri)/log(ro/ri);//m^2
disp("m^2",Am,"equivalent log-mean area =")


