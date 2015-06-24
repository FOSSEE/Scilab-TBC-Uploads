//Converting Voltage source with series resistance to current source
I=1/(1/4)

//KCL at nodes 1,2,3 using conductances
A=[11,-3,-4;-3,6,-2;-4,-2,11]
V=inv(A)*[5;-7;6]

disp(V)