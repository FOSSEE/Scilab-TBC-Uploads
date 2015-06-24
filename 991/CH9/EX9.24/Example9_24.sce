//Example 9.24. refer fig.9.90(a)
clc
hie=400
hre=2.1*10^-4
hfe=40
hoe=25*10^-6
RL=5*10^3
RC=3*10^3
disp("From the circuit 9.90(a),")
format(6)
Rth=(RL*RC)/(RL+RC)
RLd=hoe*(Rth)
disp(RLd,"  RL = hoe*(RL || RC) =")
disp("For equivalent circuit refer fig.9.90(b).")
Ri=(hie*100*10^3)/(hie+(100*10^3))
disp(Ri,"  Input resistance,    Ri = hie || 100k =")
R1=50*10^3
format(7)
Ro=(R1*RC*RL)/((RC*RL)+(R1*RL)+(R1*RC))
disp(Ro,"  Output resistance,    Ro = 50k || 3k || 5k =")
disp("    Vo/VS = (Vo/Vi) * (Vi/VS)")
disp("    Vo/Vi = (-hfe*RL) / hie")
x=(-hfe*Ro)/hie
disp(x,"Therefore,    Vo/Vi = -hfe*Ro / hie =")
disp("In the equivalent circuit,")
disp("    Vi = (VS*Ri) / (Ri+RS)")
RS=1*10^3
y=Ri/(Ri+RS)
disp(y,"    Vi/VS = Ri/(Ri+RS) =")
format(6)
Avs=abs(x*y)
disp(Avs,"Hence,    Avs = Vo/VS = (Vo/Vi)*(Vi/VS) =")