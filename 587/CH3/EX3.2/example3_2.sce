clear;
clc;

//Example 3.2[Heat Loss through a Single Pane Window]
//Assumptions :-
//1)Heat transfer through the window is steady
//2)Heat transfer through the wall is one dimensional
k=0.78;//[W/m.K]
disp("W/m.K",k,"The thermal conductivity is given to be")
L=0.008;//Thickness of glass window[m]
A=(0.8*1.5);//Area of the window[m^2]
T_1=20;//Temeprature of inner surface of glass window[dgree Celcius]
T_2=-10;//Temeprature of outer surface of glass window[dgree Celcius]
h_in=10;//Heat transfer coefficient on the inner surface of the window[W/m^2]
h_out=40;//Heat transfer coefficient on the outer surface of the window[W/m^2]
//Convection Resistance
R_conv1=1/(h_in*A);//[degree Celcius/W]
R_conv2=1/(h_out*A);//[degree Celcius/W]
//Conduction Resistance
R_cond=L/(k*A);//[degree Celcius/W]
//Net Resistance are in series
R_total=R_conv1+R_conv2+R_cond;//[degree Celcius/W]
disp("degree Celcius/W",R_total,"The total Resistance offered by glass window")
Q_=(T_1-T_2)/R_total;//[W]
disp("W",Q_,"Steady rate of Heat Transfer through the window is")
//Knowing the rate of Heat Transfer 
T1=T_1-(Q_*R_conv1);//[degree Celciusthe inner surface temperature of the window glass can be determined from]
disp("degree Celcius",T1,"Inner Surface Temperature of the window glass")
