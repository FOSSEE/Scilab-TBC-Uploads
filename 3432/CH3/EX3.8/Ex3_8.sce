//Example 3.8
//Partial fraction expansion for distinct real roots.

clear;
clc;
//------------------------------------------------------------------
//Partial fraction expansion for distinct real roots
// Transfer function
s=%s;
num=(s+2)*(s+4)
p1=s;
p2=(s+1);
p3=(s+3);
sys=syslin('c',num/(p1*p2*p3))
//------------------------------------------------------------------
//Partial fraction expansion is: sys= r1/p1 + r2/p2 + r3/p3
//residue calculation
r1=residu(num,p1,(p2*p3))
r2=residu(num,p2,(p1*p3))
r3=residu(num,p3,(p1*p2))

disp([r1 r2 r3]',"Residues of the poles p1, p2 and p3 are")
disp([roots(p1), roots(p2), roots(p3)]',"Poles p1, p2 and p3 are at")
disp('k=[]')

//------------------------------------------------------------------
