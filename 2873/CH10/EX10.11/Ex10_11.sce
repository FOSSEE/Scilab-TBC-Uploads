// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 10 Example 11")
BP=50;//brake power output at full load in KW
BP1=40.1;//brake power output of 1st cylinder in KW
BP2=39.5;//brake power output of 2nd cylinder in KW
BP3=39.1;//brake power output of 3rd cylinder in KW
BP4=39.6;//brake power output of 4th cylinder in KW
BP5=39.8;//brake power output of 5th cylinder in KW
BP6=40;//brake power output of 6th cylinder in KW
disp("indicated power of 1st cylinder=BP-BP1 in KW")
BP-BP1
disp("indicated power of 2nd cylinder=BP-BP2 in KW")
BP-BP2
disp("indicated power of 3rd cylinder=BP-BP3 in KW")
BP-BP3
disp("indicated power of 4th cylinder=BP-BP4 in KW")
BP-BP4
disp("indicated power of 5th cylinder=BP-BP5 in KW")
BP-BP5
disp("indicated power of 6th cylinder=BP-BP6 in KW")
BP-BP6
disp(" total indicated power(IP)in KW")
IP=9.9+10.5+10.9+10.4+10.2+10
disp("mechanical efficiency(n_mech)=BP/IP")
n_mech=BP/IP
disp("in percentage")
n_mech=n_mech*100
disp("so indicated power=61.9 KW")
disp("mechanical efficiency=80.77%")
