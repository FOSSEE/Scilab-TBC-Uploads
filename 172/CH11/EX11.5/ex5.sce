//ques5
//To determine thermal efficiency of cycle
clear
clc
//5-Inlet state for turbine
//6-Exit state for turbine
//h-Enthalpy at a state 
//s-Entropy at a state
//from steam table
h5=3169.1;//kJ/kg
s5=6.7235;//kJ/kg
s6s=s5;
sf=0.6493;//Entropy for liquid state in kJ/kg
sfg=7.5009;//Entropy difference in kJ/kg
hf=191.8;//kJ/kg
hfg=2392.8;//Enthalpy difference in kJ/kg
x6s=(s6s-sf)/sfg;//x-factor
h6s=hf+x6s*hfg;//kJ/Kg at state 6s
nt=0.86;//turbine efficiency given
wt=nt*(h5-h6s);
//1-Inlet state for pump
//2-Exit state for pump
np=0.80;//pump efficiency given
v=0.001009;//specific heat in m^3/kg
P2=5000;//kPa
P1=10;//kPa
wp=v*(P2-P1)/np;//Work done in pump in kJ/kg
wnet=wt-wp;//net work in kJ/kg
//3-Inlet state for boiler
//4-Exit state for boiler
h3=171.8;//in kJ/kg from table
h4=3213.6;//kJ/kg from table
qh=h4-h3;
nth=wnet/qh;
printf('Cycle Efficiency = %.1f ',nth*100);