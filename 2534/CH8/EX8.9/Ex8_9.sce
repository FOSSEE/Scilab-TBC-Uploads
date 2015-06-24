//Ex8_9
clc
Ai = -60
Ri = 2.0*10^3
RL = 15*10^3
disp("Ai = "+string(Ai))//current gain
disp("Ri = "+string(Ri)+"ohm")//input resistance
disp("RL = "+string(RL)+"ohm")//load resistance
Av = Ai*RL/Ri
disp("Av = Ai*RL/Ri = "+string(Av))//voltage gain

//note : in textbook,
//       author notify LOAD RESISTANCE as 'Rc' in question BUT 'RL' in solution.
//       I have work with "load resistance notified as RL".
