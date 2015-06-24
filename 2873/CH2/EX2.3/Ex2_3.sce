// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 2,Example 3")
disp("emf equation")
disp("E=(0.003*t)-((5*10^-7)*t^2))+(0.5*10^-3)")
disp("using emf equation at ice point,E_0 in volts")
t=0;//ice point temperature in degree celcius
disp("E_0=(0.003*t)-((5*10^-7)*t^2)+(0.5*10^-3)")
E_0=(0.003*t)-((5*10^-7)*t^2)+(0.5*10^-3)
disp("using emf equation at steam point,E_100 in volts")
t=100;//steam point temperature in degree celcius
disp("E_100=(0.003*t)-((5*10^-7)*t^2)+(0.5*10^-3)")
E_100=(0.003*t)-((5*10^-7)*t^2)+(0.5*10^-3)
disp("now emf at 30 degree celcius using emf equation(E_30)in volts")
t=30;//temperature of substance in degree celcius
E_30=(0.003*t)-((5*10^-7)*t^2)+(0.5*10^-3)
disp("now the temperature(T) shown by this thermometer")
disp("T=((E_30-E_0)/(E_100-E_0))*(T_100-T_0) in degree celcius")
T_100=100;//steam point temperature in degree celcius
T_0=0;//ice point temperature in degree celcius
T=((E_30-E_0)/(E_100-E_0))*(T_100-T_0)
disp("NOTE=>In this question,values of emf at 100 and 30 degree celcius is calculated wrong in book so it is corrected above so the answers may vary.")
