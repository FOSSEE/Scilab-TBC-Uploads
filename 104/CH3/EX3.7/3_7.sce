//block diagram is converted to SFG
//mason's gain formula applied to SFG in figure 3-17
//E as output node
syms G1 G2 G3 G4 H1 H2 
M1=1
L11=-G1*G2*H1
L21=-G2*G3*H2
L31=-G1*G2*G3
L41=-G1*G4
L51=-G4*H2
delta=1-(L11+L21+L31+L41+L51)
delta1=1-(L21+L51+L11)
x=M1*delta1/delta
disp(x,"E(s)/R(s)=")
//Y as output node
M1=G1*G2*G3
M2=G1*G4
delta1=1
delta2=1
y=(M1*delta1+M2*delta2)/delta
disp(y,"Y(s)/R(s)=")