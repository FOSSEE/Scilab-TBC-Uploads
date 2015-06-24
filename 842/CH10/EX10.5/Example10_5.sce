//clear//
//Example10.5:Z-transform of Impulse Sequence
syms n z;
X=symsum(1*(z^(-n)),n,0,0);
disp(X,"ans=")
//Result
// 1   
