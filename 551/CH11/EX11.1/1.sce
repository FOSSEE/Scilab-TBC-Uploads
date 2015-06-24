clc

%C=0.88; //Fraction of carbon in coal
%H=0.042; //Fraction of Hydrogen in coal
w_f=0.848; //gm
w_fw=0.027; //gm
w=1950; //gm
w_e=380; //gm
dt=3.06; //0C; Observed temperature rise
tc=0.017; //0C
dt1=dt+tc; //Corrected temperature rise
Cal=6700; //J/gm; Calorific value of fuse wire

Q_received=(w+w_e)*4.18*dt1; //Heat received by water

Q_rejected=w_fw*Cal; //Heat given out by fuse wire

Q_produced=Q_received - Q_rejected;

HCV=Q_produced/w_f;
disp("Higher calorific value=")
disp(HCV)
disp("kJ/kg")

LCV=HCV - 2465*9*%H;
disp("Lower Calorific value=")
disp(LCV)
disp("kJ/kg")