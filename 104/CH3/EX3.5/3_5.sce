//mason's gain formula applied to SFG in figure 3-16
//y2 as output node
syms G1 G2 G3 G4 G5 H1 H2 H3 H4
M1=1
L11=-G1*H1
L21=-G3*H2
L31=G1*G2*G3*-H3
L41=-H4
L12=G1*H1*G3*H2
L22=G1*H1*H4
L32=G3*H2*H4
L42=-G1*G2*G3*H3*H4
L13=-G1*H1*G3*H2*H4
delta=1-(L11+L21+L31+L41)+(L12+L22+L32+L42)+L13
delta1=1-(L21+L41)+(L32)
x=M1*delta1/delta
disp(x,"y2/y1=")
//y4 as output node
M1=G1*G2
delta1=1-(L41)
y=M1*delta1/delta
disp(y,"y4/y1=")
//y6 or y7 as output node
M1=G1*G2*G3*G4
M2=G1*G5
delta1=1
delta2=1-(L21)
z=(M1*delta1+M2*delta2)/delta
disp(z,"y6/y1=y7/y1=")