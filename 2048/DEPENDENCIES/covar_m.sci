//User defined equivalent function to Matlab covar function
//For discrete time domain only
//Uses Lyapunov's equation for computation
//W: noise intensity (scalar)
//Matlab result for unstable systems: 
//Warning: Unstable models have infinite covariance

function P = covar_m(sys,W)
a = roots(sys('den'));
b = length(a);
c = abs(a) > 1;  
if b ~= 0 then
  for i = 1:b
    if c(i) == %t then
    disp('Warning: System being unstable has infinite covariance');
    P = %inf;
    else 
    s = tf2ss(sys);
    [A,B,C,D] = s(2:5);
    //Sylvester and Lyapunov solver
    task = 2; flag = [1 0]; tran = 1;
    Q1 = -B*W*B';
    Q = linmeq(task,A,Q1,flag,tran)
    P = C*Q*C' + D*W*D';
    end;
  end;
else
    s = tf2ss(sys);
    [A,B,C,D] = s(2:5);
    //Sylvester and Lyapunov solver
    task = 2; flag = [1 0]; tran = 1;
    Q1 = -B*W*B';
    Q = linmeq(task,A,Q1,flag,tran)
    P = C*Q*C' + D*W*D';
end;
endfunction;

//if d==0 | c==%f
//  disp('Calc');
//else 
//  disp('Unstable');
//end;
// Above logic can also solve our purpose
// But it gives incorrect answer if roots are [1 -1 1] or 
// [1 -1 -1] ....

