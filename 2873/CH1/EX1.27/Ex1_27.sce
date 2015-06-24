// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 1,Example 27")
T1=(27+273);//initial temperature of air in k
T2=500;//final temperature of air in k
disp("let inlet state be 1 and exit state be 2")
disp("by charles law volume and temperature can be related as")
disp("(V1/T1)=(V2/T2)")
disp("(V2/V1)=(T2/T1)")
disp("or (((%pi*D2^2)/4)*V2)/(((%pi*D1^2)/4)*V1)=T2/T1")
disp("since Δ K.E=0")
disp("so (D2^2/D1^2)=T2/T1")
disp("D2/D1=sqrt(T2/T1)")
disp("say(D2/D1)=k")
disp("so exit to inlet diameter ratio(k)")
k=sqrt(T2/T1)
