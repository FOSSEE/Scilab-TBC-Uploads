// PID controller, tuned with GPC, as discussed in Example 12.5 on page 452.
// 12.10

exec('gpc_pid.sci',-1);
exec('zpowk.sci',-1);
exec('xdync.sci',-1);
exec('rowjoin.sci',-1);
exec('polsize.sci',-1);
exec('left_prm.sci',-1);
exec('t1calc.sci',-1);
exec('indep.sci',-1);
exec('seshft.sci',-1);
exec('makezero.sci',-1);
exec('move_sci.sci',-1);
exec('colsplit.sci',-1);
exec('clcoef.sci',-1);
exec('cindep.sci',-1);

A = [1 -1.95 0.935];
B=-0.015;
C=1;
degA=2;
degB=0;
degC=0;
N1=1;
N2=5;
Nu=2;
gamm=0.05;
gamma_y=1;
lambda=0.02;

[Kp,Ki,Kd] = ...
gpc_pid(A,degA,B,degB,C,degC,N1,N2,Nu,lambda,gamm,gamma_y)

