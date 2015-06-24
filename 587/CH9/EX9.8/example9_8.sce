clear;
clc;

//Example9.8[Heat Loss through Aluminium Framed Windows]
//Given:-
H=1.2;//Height[m]
w=1.8;//Width[m]
Ti=22;//Inside temp[degree Celcius]
To=-10;//Outside temp[degree Celcius]
U_a=6.63,U_b=3.51,U_c=1.92,hi=8.3;//[W/m^.degree Celcius]
//Solution:-
A_win=h*w;//[m^2]
Q_win_a=U_a*A_win*(Ti-To);//[W]
T_glass_a=Ti-(Q_win_a/(hi*A_win));//[degree Celcius]
disp("degree Celcius",T_glass_a,"(a) The Inner surface temperature of the window glass is")
Q_win_b=U_b*A_win*(Ti-To);//[W]
T_glass_b=Ti-(Q_win_b/(hi*A_win));//[degree Celcius
disp("degree Celcius",T_glass_b,"(b) The Inner surface temperature of the window glass is")
Q_win_c=U_c*A_win*(Ti-To);//[W]
T_glass_c=Ti-(Q_win_c/(hi*A_win));//[degree Celcius]
disp("degree Celcius",T_glass_c,"(c) The Inner surface temperature of the window glass is")