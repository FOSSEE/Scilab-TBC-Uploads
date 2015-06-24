// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 11 Example 8")
po=0.9*10^5;//atmospheric air pressure in pa
To=(3+273);//temperature of atmospheric air in K
p1=1*10^5;//pressure due to ramming air in pa
p2=4*10^5;//pressure when air leaves compressor in pa
p3=p2;
p4=p3;
p5=1.03*10^5;//pressure maintained in passenger cabin in pa
T6=(25+273);//temperature of air leaves cabin in K
Q=15*3.5;//refrigeration capacity of aeroplane in KJ/s
n1=0.9;//isentropic efficiency of compressor
n2=0.8;//isentropic efficiency of turbine
Cp=1.005;//specific heat at constant pressure in KJ/kg K
disp("considering index of compression and expansion as 1.4")
y=1.4;
disp("during ramming action,process 0-1,")
disp("T1/To=(p1/po)^((y-1)/y)")
disp("T1=To*(p1/po)^((y-1)/y)in K")
T1=To*(p1/po)^((y-1)/y)
disp("during compression process 1-2_a")
disp("T2_a/T1=(p2/p1)^((y-1)/y)")
disp("T2_a=T1*(p2/p1)^((y-1)/y)in K")
T2_a=T1*(p2/p1)^((y-1)/y)
disp("n1=(T2_a-T1)/(T2-T1)")
disp("so T2=T1+(T2_a-T1)/n1 in K")
T2=T1+(T2_a-T1)/n1
disp("In heat exchanger 66% of heat loss shall result in temperature at exit from heat exchanger to be,T3=0.34*T2 in K")
T3=0.34*T2
disp("subsequently for 10 degree celcius temperature drop in evaporator,")
disp("T4=T3-10 in K")
T4=T3-10
disp("expansion in cooling turbine during process 4-5;")
disp("T5_a/T4=(p5/p4)^((y-1)/y)")
disp("T5_a=T4*(p5/p4)^((y-1)/y)in K")
T5_a=T4*(p5/p4)^((y-1)/y)
disp("n2=(T4-T5)/(T4-T5_a)")
disp("T5=T4-(T4-T5_a)*n2 in K")
T5=T4-(T4-T5_a)*n2
disp("let the mass flow rate of air through cabin be m kg/s.using refrigeration capacity heat balance yields.")
disp("Q=m*Cp*(T6-T5)")
disp("so m=Q/(Cp*(T6-T5))in kg/s")
m=Q/(Cp*(T6-T5))
disp("work input to compressor(W)=m*Cp*(T2-T1)in KJ/s")
W=m*Cp*(T2-T1)
disp("W in Hp")
W=W/.7457
disp("COP=refrigeration effect/work input=Q/W")
W=41.37;//work input to compressor in KJ/s
COP=Q/W
disp("so COP=1.27")
disp("and HP required=55.48 hp")


