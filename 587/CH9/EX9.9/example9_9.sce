clear;
clc;

//Example9.9[U-Factor of a Double-Door Window]
//Given:-
A_win=1.8*2.0;//[m^2]
A_glazing=2*1.72*0.94;//[m^2]
U_c=3.24,U_e=3.71,U_f=2.8;//U factors for the center edge and frame sections respectively [W/m^2.degree Celcius]
//Solution:-
A_frame=A_win-A_glazing;//[m^2]
A_center=2*(1.72-0.13)*(0.94-0.13);//[m^2]
A_edge=A_glazing-A_center;//[m^2]
U_win=((U_c*A_center)+(U_e*A_edge)+(U_f*A_frame))/A_win;//[W/m^2.degree Celcius]
disp("W/m^2.degree Celcius",U_win,"The overall U factor of the entire window is")