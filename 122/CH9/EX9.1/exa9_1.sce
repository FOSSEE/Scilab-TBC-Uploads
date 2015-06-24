// Example 9-1
// Transfer function to controllable, observable and jordon canonical forms

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "<path for the dependencies>";
// exec("pf_residu.sci");

s = %s;
N = s + 3;
D = s^2 + 3*s + 2;

Hc = cont_frm(N,D);
disp('controllable form ='); ssprint(Hc);

Ho =syslin('c', (Hc.A)' , (Hc.C)', (Hc.B)' ,Hc.D);
disp('observable form ='); ssprint(Ho);

A = diag(roots(D));
B = [1;1]; 
C = pf_residu(N,D)';
D = Hc.D;               // in this case : b0 = 0
Hj = syslin('c',A,B,C,D); 
disp('jordon canonical form =');ssprint(Hj);

// This example will work for any proper transfer function
// with all distinct poles or eigen values
