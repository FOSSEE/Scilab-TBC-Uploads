clear;
clc;

//Example3.9[Heat Loss from an Insulated Electric Wire]
//Given:-
k_insu=0.15;//[W/m.degree Celcius]
V=8;//Voltage drop across wire[Volts]
I=10;//Current flowimg through the wire[Amperes]
T_atm=30;//Temperature of atmosphere to which wire is exposed[degree Celcius]
h=12;//heat transfer coefficient[W/m^2.degree Celcius]
L=5;//length of wire[m]
D=0.003;//diameter of wire[m]
t=0.002;//thickness of insulation[m]
r=(D/2)+t;//Effective radius[m]
//Solution:-
//Rate of heat generated in the wire becomes equal to the rate of heat transfer
Q_=V*I;//[W]
disp("W",Q_,"Heat generated in the wire is")
A2=2*%pi*r*L;//Outer surface area[m^2]
//Resistances offered
R_conv=1/(h*A2);//Convection resistance for the outer sueface of insulation[degree Celcius/W]
R_insu=(log(r/(D/2)))/(2*%pi*k_insu*L);//Conduction resitance for the plastic insulation[degree Celcius/W]
//Effective Resistance
R_total=R_conv+R_insu;//[degree Celcius/W]
//Interface Temperature can be determined from
T1=T_atm+(Q_*R_total);//[degree Celcius]
disp("degree Celcius",T1,"The interface temperature is")
//Critical radius 
r_cr=k_insu/h;//[m]
disp("mm",r_cr*1000,"The critical radius of insulation of the plastic cover is")
//Larger value of critical radius ensures that increasing the thickness of insulation upto critical radius will increase the rate of heat transfer