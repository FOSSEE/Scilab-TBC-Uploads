//Example 12.52
//Find the average power.
Xo=-(4*%pi);X1=4*%pi
X=integrate('(1-(X/(4*%pi)))','X',Xo,X1)
disp(X/(4*%pi),'Average Power=')
