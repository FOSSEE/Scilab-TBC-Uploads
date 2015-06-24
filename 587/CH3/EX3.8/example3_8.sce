clear;
clc;

//Example3.8[Heat Loss through an Insulated Steam Pipe]
//Given:-
T_steam=320;//[degree Celcius]
T_surr=5;//[degree Celcius]
k_iron=80;//Thermal conductivity of cast iron[W/m.degree Celcius]
k_insu=0.05;//Thermal conductivity of glass wool insulation[W/m.degree Celcius]
h_out=18;//Covection heat transfer coefficient outside the pipe[w/m^2.degree Celcius]
h_in=60;//Covection heat transfer coefficient insideside the pipe[w/m^2.degree Celcius]
D_in=0.05;//Inner diameter of pipe[m]
D_out=0.055;//Outer diameter of pipe[m]
t=0.03;//Thickness of insulation[m]
r=(D_out/2)+t;//Effective outer radius[m]
L=1;//Length of pipe[m]
//Solution:-
//Areas of surfaces exposed to convection
A1=2*%pi*(D_in/2)*L;//Inner Area of pipe[m^2]
A2=2*%pi*(r)*L;//Outer Area of pipe[m^2
//Individual Thermal Resistances
R_conv_in=1/(h_in*A1);//Resistance to convetion from inner surface of pipe[degree Celcius/W]
R_pipe=(log(D_out/D_in))/(2*%pi*k_iron*L);//Resitance to conduction through iron pipe[degree Celcius/W]
R_insu=(log(r/(D_out/2)))/(2*%pi*k_insu*L);//Resistance to conduction through insulation[degree Celcius/W]
R_conv_out=1/(h_out*A2);//Resistance to convetion from outer surface of insulation on pipe[degree Celcius/W]
//All resistances are in series
R_total=R_conv_in+R_pipe+R_insu+R_conv_out;//Total Resistance[degree Celcius]
Q_=(T_steam-T_surr)/R_total;//[W]
disp("W",Q_,"The Steady rate of heat loss from the steam per m length of pipe is")
delta_T_pipe=Q_*R_pipe;//[degree Celcius]
delta_T_insu=Q_*R_insu;//[degree Celcius]
disp("degree Celcius",delta_T_insu,"and",delta_T_pipe,,"The temperature drop across the pipe and the insulation is respectively")