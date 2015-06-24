clear;
clc;

//Example7.8[Effect of insulation on Surface Temperature]
//Given:-
Ti=120;//Initial temp of hot water[degree Celcius]
k_pipe=15;//W/m.degree Celcius 
ri=0.008,ro=0.01;//Inner and outer radii[m]
t=0.002;//Thickness of pipe[m]
To=25;//Ambient temperature[degree Celcius]
Ts=40;//Maximum Temp of outer surface of insulation[degree Celcius]
hi=70,ho=20;//Heat transfer coefficients inside and outside of the pipe[W/m^2.degree Celcius]
k_insu=0.038;//[W/m.degree Celcius]
L=1;//section of pipe[m]
//Solution:-
//Areas of surfaces exposed to convection
A1=2*%pi*ri*L;//[m^2]
//Individual Thermal Resistances
R_conv1=1/(hi*A1);//[degree Celcius/W]
R_pipe=(log(ro/ri))/(2*%pi*k_pipe*L);//[degree Celcius/W]
//R_insu=(log(r3/ri))/(2*%pi*k_insu*L)
//R_conv2=1/(ho*2*%pi*r3*L)
//R_total=R_conv1+R_conv2+R_pipe+R_insu
//Q=(Ti-To)/R_total;
//Q=(Ts-To)/R_conv2;
//Equating both Q we get
function[r]=radius(r3)
    r(1)=1884*r3(1)*(0.284+0.0024+4.188*log((r3(1))/0.01)+(1/(125.6*r3(1))))-95;
    deff('[r]=radius(r3)',['radius_3=1884*r3(1)*(0.284+0.0024+4.188*log((r3(1))/0.01)+(1/(125.6*r3(1))))-95'])
endfunction
    disp("m",xs,"The outer radius of the insulation is")
    t=xs-ro;//[m]
    disp("cm",100*t,"The minimum thickness of fibreglass insulation required is")
    ///Correct output will be displayed after executing the codes once and then re-executin them
    