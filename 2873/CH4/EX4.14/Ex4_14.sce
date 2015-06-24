// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 4 Example 14")
Q_source=2000;//heat supplied by heat engine in KJ/s
T_source=1500;//temperature of source in K
T_R=(15+273);//temperature of reservoir in K
Q_sink=3000;//heat received by sink in KJ/s
disp("let temperature of sink be T_sink K")
disp("Q_sink_HE+Q_sink_R=3000 ........eq 1")
disp("since complete work output from engine is used to run refrigerator so,")
disp("2000-Q_sink_HE=Q_sink_R-Q_R .........eq 2")
disp("by eq 1 and eq 2,we get Q_R in KJ/s")
Q_R=3000-2000
disp("also for heat engine,2000/1500=Q_sink_HE/T_sink")
disp("=>Q_sink_HE=4*T_sink/3")
disp("for refrigerator,Q_R/288=Q_sink_R/T_sink=>Q_sink_R=1000*T_sink/288")
disp("substituting Q_sink_HE and Q_sink_R values")
disp("4*T_sink/3+1000*T_sink/288=3000")
disp("so temperature of sink(T_sink)in K")
disp("so T_sink=3000/((4/3)+(1000/288))")
T_sink=3000/((4/3)+(1000/288))
disp("T_sink in degree celcius")
T_sink=T_sink-273
