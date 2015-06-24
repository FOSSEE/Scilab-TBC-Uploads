clear;
clc;

//Example3.3[:Heat Loss through double pane windows]
//Given:-
k_g=0.78;//Thermal conductitvity of glass [W/m.K]
k_a=0.026;//Thermal conductivity of air space[W/m.K]
L_g=.004;//Thickness of glass layer[m]
L_a=0.01;//Thickness of air space[m]
h_in=10;//ConvectionHeat transfer coefficient on the inner surface of the window[W/m^2]
h_out=40;//ConvectionHeat transfer coefficient on the outer surface of the window[W/m^2]
T_1=20;//Outer wall Temperature [degree Celcius]
T_2=-10;//Inner wall Temperature [degree Celcius]
//Solution:-
A=(0.8*1.5);//Area of glass window[m^2]
//Convection Resistances
R_conv1=1/(h_in*A);//Due to convection heat transfer between inner atmosphere and glass[degree Celcius/W]
R_conv2=1/(h_out*A);//Due to convection heat transfer between outer atmosphere and glass[degree Celcius/W]
//Conduction Resistances
R_cond1=L_g/(k_g*A);//Due to conduction heat transfer through the glass[degree Celcius/W]
R_cond2=R_cond1;//Glass Medium is seperated by air spac hence two glass mediums are created[degree Celcius/W]
R_cond3=L_a/(k_a*A);//Due to conduction heat transfer through the air space[degree Celcius/W]
//Net Resistance offered by window is the sum of all the individual resistances written in the oreder of their occurence
R_total=R_conv1+R_cond1+R_cond2+R_cond3+R_conv2;//[degree Celcius/W]
disp("degree Celcius/W",R_total,"The net resistance offered is")
Q_=(T_1-T_2)/R_total;//[W]
disp("W",Q_,"The steady rate of Heat transfer through the window is")
//Inner surface temperature of the window is given by
T1=T_1-(Q_*R_conv1);//[degree Celcius]
disp("degree Celcius",T1,"Inner Surface Temperature of the window is")