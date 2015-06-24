// Example 9-5
// State transition matrix

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "<path for the dependencies>";
// exec("pf_residu.sci");
// exec("ilaplace.sci");
  
s = %s;
A = [0 1; -2 -3];
L = inv(s*eye(2,2) - A);
disp(L, 'inv(sI - A) =');

// Find the Inverse Laplace transform
for i = 1:2
  for j = 1:2
    phi(i,j) = ilaplace(L(i,j));
  end;
end;

disp(phi,'state transition matrix =');
// ilaplace may not work for systems with repeated poles