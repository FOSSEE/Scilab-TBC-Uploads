// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 1, Example 2")
//The thermal conductivity(km)of masonry wall is .8 W/(mK)
//The thermal conductivity(kc)of composite wall is .2 W/(mK)
//The thickness of composite wall(Lc) is 100 mm or .1 m
km=.8;
kc=.2;
Lc=.1;
//The thickness of masonry wall(Lm) is to be found. 
//The steady state heat flow(qm)through masonry wall is km(T1-T2)/L
// The steady state heat flow(qc)through composite wall is kc(T1-T2)/L
//As the steady rate of heat flow through masonry wall is 80% that through composite wall and both the wall have same surface area and same temp. difference so qm/qc=0.8=(km/kc)*(Lc/Lm)
//The thickness of masonry wall is Lm.
disp ("The thickness of masonry wall is Lm in m")
Lm=(km/kc)*(Lc/(0.8))
