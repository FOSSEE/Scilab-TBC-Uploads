//Network Theorem 2
//pg no 3.8
//example 3.6
a=15/38;
b=10/38;
x=a+b;
mprintf("\nApplying KCL at node 1, \nI1 = %.3f",a);//When the 15 V source is acting alone
mprintf("\nApplying KCL at node 1, \nI1 = %.3f",b);//When the 10 V source is acting alone
mprintf("\nBy superposition theorem, \nI = I1+I2 = %.3f A",x);