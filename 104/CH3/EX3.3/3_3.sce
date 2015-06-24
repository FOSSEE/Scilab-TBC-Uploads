//mason's gain formula applied to SFG in figure 3-15
syms G H
M1=G        //as seen from SFG there is only one forward path
L11=-G*H     //only one loop and no non touching loops
delta=1-L11
delta1=1
Y=M1*delta1/delta
disp(Y,"Y(s)/R(s)=")