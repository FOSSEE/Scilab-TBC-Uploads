// example:-5.10.page no.-250.
//program to find out expression for taoin.
syms P1 P2 S11 S22 S12 S21 taol taoin L1 l2;
P1=S11; // path one.
P2=S21*S12*taol;  //path second.
L1=taol*S22; // loop gain for path 1.
L2=L1^2;  // loop gain taking two at a time.(but only one loop wiil exist.i.e=L1.)
L2=0;
// from mason's gain formula.
taoin=(S11*(1-taol*S22)+(S21*taol*S12))/(1-taol*S22);
// result
disp(taoin)