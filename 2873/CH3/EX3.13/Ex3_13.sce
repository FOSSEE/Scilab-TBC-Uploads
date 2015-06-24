// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 3 Example 13")
Qadd=5000;//heat supplied in boiler in J/s
disp("work done by turbine(Wt)in J/s is 25% of heat added i.e")
disp("Wt=.25*Qadd")
Wt=.25*Qadd
disp("heat rejected by condensor(Qrejected)in J/s is 75% of head added i.e")
disp("Qrejected=.75*Qadd")
Qrejected=.75*Qadd
disp("and feed water pump work(Wp)in J/s is 0.2% of heat added i.e")
disp("Wp=(-)0.002*Qadd")
Wp=0.002*Qadd
disp("capacity of generator(W)=(Wt-Wp)/1000 in Kw")
W=(Wt-Wp)/1000



