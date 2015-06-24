//Network Theorem 2
//pg no 3.8
//example 3.7
a=3;
b=2;
x=a+b;
mprintf("\napplying KCL at node 1, \nIx1 = %.f A",a);//when the 30 V source is acting alone
mprintf("\napplying KCL at the mesh, \nIx2 = %.f A",b);//when the 20 V source is acting alone
mprintf("\nBy superposition theorem, Ix = Ix1+Ix2 = %.f A",x);