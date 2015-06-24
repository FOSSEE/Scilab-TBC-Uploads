//Basic Circuit Concepts
//pg no.-1.20
//example 1.15
r1=3;
r2=2.33;
r3=6;
v1=18;
v2=5.985;
mprintf("\nApplying KCL at the node, \n(Va-18)/3+(Va-5.985)/2.33+Va/6 = 0");
Va=((v1*r2*r3)+(v2*r1*r3))/((r2*r3)+(r1*r3)+(r1*r2));
printf("\nSolving the equation,we get, \nVa = %.2f V",Va);
