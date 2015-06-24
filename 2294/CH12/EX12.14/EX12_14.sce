//Example 12.14
//Find the mean value of the current under following conditions.
disp('I=Io[e^(nV)-1]')
disp('E[I]=E[Io[e^(nV)-1]]:')
Xo=0; X1=2;
X=integrate('%e^(10*X)-1','X',Xo,X1);
disp(10^(-9)*X/2,'Hence E[I]=')
