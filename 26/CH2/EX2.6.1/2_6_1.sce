disp('the consumption matrix is:')
C=[.1 .6 .6;.3 .2 0;.3 .1 .1];
disp(C)
disp('Assuming that agriculture plans to produce 100 units and other units produce nothing')
disp('the production vector is given by')
x=[0;100;0];
disp(x,'x=')
disp('thus the intermediate demand is:')
disp(C*x)