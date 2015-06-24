// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 8 Example 14")
n=0.8;//efficiency of both HP and LP turbine
P=2500;//output in hp
disp("This is a mixed pressure turbine so the output of turbine shall be sum of the contributions by HP and LP steam streams.")
disp("For HP:at inlet of HP steam=>h1=3023.5 KJ/kg,s1=6.7664 KJ/kg K")
h1=3023.5;
s1=6.7664;
disp("ideally, s2=s1=6.7664 KJ/kg K")
s2=s1;
disp("s2=sf at 0.075 bar +x3* sfg at 0.075 bar")
disp("from steam tables,at 0.075 bar,sf=0.5764 KJ/kg K,sfg=7.6750 KJ/kg K")
sf=0.5764;
sfg=7.6750;
disp("so x3=(s2-sf)/sfg")
x3=(s2-sf)/sfg
x3=0.806;//approx.
disp("h_3HP=hf at 0.075 bar+x3*hfg at 0.075 bar in KJ/kg")
disp("from steam tables,at 0.075 bar,hf=168.79 KJ/kg,hfg=2406.0 KJ/kg")
hf=168.79;
hfg=2406.0; 
h_3HP=hf+x3*hfg
disp("actual enthalpy drop in HP(h_HP)=(h1-h_3HP)*n in KJ/kg")
h_HP=(h1-h_3HP)*n
disp("for LP:at inlet of LP steam")
disp("h2=2706.7 KJ/kg,s2=7.1271 KJ/kg K")
h2=2706.7;
s2=7.1271;
disp("Enthalpy at exit,h_3LP=2222.34 KJ/kg")
h_3LP=2222.34;
disp("actual enthalpy drop in LP(h_LP)=(h2-h_3LP)*n in KJ/kg")
h_LP=(h2-h_3LP)*n
disp("HP steam consumption at full load=P*0.7457/h_HP in kg/s")
P*0.7457/h_HP
disp("HP steam consumption at no load=0.10*(P*0.7457/h_HP)in kg/s")
0.10*(P*0.7457/h_HP)
disp("LP steam consumption at full load=P*0.7457/h_LP in kg/s")
P*0.7457/h_LP
disp("LP steam consumption at no load=0.10*(P*0.7457/h_LP)in kg/s")
0.10*(P*0.7457/h_LP)
disp("The problem can be solved geometrically by drawing willans line as per scale on graph paper and finding out the HP stream requirement for getting 1000 hp if LP stream is available at 1.5 kg/s.")
disp("or,Analytically the equation for willans line can be obtained for above full load and no load conditions for HP and LP seperately.")
disp("Willians line for HP:y=m*x+C,here y=steam consumption,kg/s")
disp("x=load,hp")
disp("y_HP=m_HP*x+C_HP")
disp("0.254=m_HP*0+C_HP")
disp("so C_HP=0.254")
C_HP=0.254;
disp("2.54=m_HP*2500+C_HP")
disp("so m_HP=(2.54-C_HP)/2500")
m_HP=(2.54-C_HP)/2500
disp("so y_HP=9.144*10^-4*x_HP+0.254")
disp("Willans line for LP:y_LP=m_LP*x_LP+C_LP")
disp("0.481=m_LP*0+C_LP")
disp("so C_LP=0.481")
C_LP=0.481;
disp("4.81=m_LP*2500+C_LP")
disp("so m_LP=(4.81-C_LP)/2500")
m_LP=(4.81-C_LP)/2500
disp("so y_LP=1.732*10^-3*x_LP+0.481")
disp("Total output(load) from mixed turbine,x=x_HP+x_LP")
disp("For load of 1000 hp to be met by mixed turbine,let us find out the load shared by LP for steam flow rate of 1.5 kg/s")
y_LP=1.5;
disp("from y_LP=1.732*10^-3*x_LP+0.481,")
disp("x_LP=(y_LP-0.481)/1.732*10^-3")
x_LP=(y_LP-0.481)/(1.732*10^-3)
disp("since by 1.5 kg/s of LP steam only 588.34 hp output contribution is made so remaining(1000-588.34)=411.66 hp,411.66 hp should be contributed by HP steam.By willans line for HP turbine,")
x_HP=411.66;
disp("from y_HP=9.144*10^-4*x_HP+C_HP in kg/s")
y_HP=9.144*10^-4*x_HP+C_HP
disp("so HP steam requirement=0.63 kg/s")


