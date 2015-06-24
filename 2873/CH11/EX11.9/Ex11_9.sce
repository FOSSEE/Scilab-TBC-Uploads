// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 11 Example 9")
disp("properties of NH3,")
disp("at 15 degree celcius,h9=-54.51 KJ/kg,hg=1303.74 KJ/kg,s9=-0.2132 KJ/kg K,sg=5.0536 KJ/kg K")
T1=(-15+273);
h9=-54.51;
hg=1303.74;
s9=-0.2132;
sg=5.0536;
disp("and at 25 degree celcius,h3=99.94 KJ/kg,h2=1317.95 KJ/kg,s3=0.3386 KJ/kg K,s2=4.4809 KJ/kg K")
T2=(25+273);
h3=99.94;
h2=1317.95;
s3=0.3386;
s2=4.4809;
disp("here work done,W=Area 1-2-3-9-1")
disp("refrigeration effect=Area 1-5-6-4-1")
disp("Area 3-8-9 =(Area 3-11-7)-(Area 9-11-10)-(Area 9-8-7-10)")
disp("so Area 3-8-9=h3-h9-T1*(s3-s9)in KJ/kg")
h3-h9-T1*(s3-s9)
disp("during throttling process between 3 and 4,h3=h4")
disp("(Area=3-11-7-3)=(Area 4-9-11-6-4)")
disp("(Area 3-8-9)+(Area 8-9-11-7-8)=(Area 4-6-7-8-4)+(Area 8-9-11-7-8)")
disp("(Area 3-8-9)=(Area 4-6-7-8-4)")
disp("so (Area 4-6-7-8-4)=12.09 KJ/kg")
disp("also,(Area 4-6-7-8-4)=T1*(s4-s8)")
disp("so (s4-s8)in KJ/kg K=")
12.09/T1
disp("also s3=s8=0.3386 KJ/kg K")
s8=s3;
disp("so s4 in KJ/kg K=")
s4=s8+12.09/T1
disp("also s1=s2=4.4809 KJ/kg K")
s1=s2;
disp("refrigeration effect(Q)=Area (1-5-6-4-1)=T1*(s1-s4)in KJ/kg")
Q=T1*(s1-s4)
disp("work done(W)=Area (1-2-3-9-1)=(Area 3-8-9)+((T2-T1)*(s1-s8))in KJ/kg")
W=12.09+((T2-T1)*(s1-s8))
disp("so COP=refrigeration effect/work done=Q/W")
COP=Q/W
disp("so COP=5.94")












