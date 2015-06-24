//clear//
clear;
clc;

//Example 19.5
//Given
Nmin = 9.4+1;
//From Example 19.3
xF = [0.33,0.37,0.30]';
xD = [0.99,0.01,0]';
K = [2.23,1.01,0.462]';
alpha = [2.21,1.0,0.457]';

//For a liquid feed
q = 1;
phi = 1.45;
f = 0;
err = 1;
while(err>0.1)
  fnew = sum(((alpha.*xD)./(alpha-phi)));
  err = abs(f-fnew);
  if (f>fnew)
    phi=phi+0.01;
  else
    phi=phi-0.01;
  end
    f = fnew;
  end
  RDm = f-1;
  RD = RDm*1.5;
  
//A = (RD-RDm)/RD+1
//from Fig. 19.5
N = (Nmin+0.41)/(1-0.41);

disp(N,'The number of ideal plate required are')  
