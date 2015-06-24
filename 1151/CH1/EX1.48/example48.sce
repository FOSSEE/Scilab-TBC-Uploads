//to find transfer function using mason gain formula

syms G1 G2 G3 G4 G5 G6 G7 G8 H1 H2 
//gains of forward paths
P1=G2*G6*G4;//forward path1 gain
P2=G3*G5*G7;//forward path2 gain
P3=G1*G2*G7;//forward path3 gain
P4=G3*G8*G6;//forward path4 gain
P5=-G1*G2*G8*G6*H2;//forward path5 gain
P6=-G3*G8*G1*G7*H1;//forward path6 gain
//gain of individual loops
L1=-G4*H1;
L2=-G5*H2;
L3=H1*H2*G1*G8;
//gain of two non touching loops
g1=G5*G4*H1*H2;

//since all the loops touches the forward path3,4,5,6 and loop 2 do not touch forward path 1 and loop1 donot touch forward path2
d1=1-L2;
d2=1-L1;
d3=1;
d4=1;
d5=1;
d6=1;
d=1-(L1+L2+L3)+g1;
G=(P1*d1+P2*d2+P4*d4+P3*d3+P5*d5+P6*d6)/d;
disp(G,"transfer function C/R=")
