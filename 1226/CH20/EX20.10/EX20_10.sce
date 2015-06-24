clc;funcprot(0);//EXAMPLE 20.10
// Initialisation of Variables
L=88;...........//Compressor stroke in cm
k=0.02;...........//Clearance ratio
p3=8.2;...........//Delivery pressure in bar
p4=1.025;.......//Suction pressure in bar
p1=p4;.......//Suction pressure in bar 
n=1.3;.........//Compression index
lo=0.55;...//Length of distance piece fitted after overhaul in cm
//Calculations
pcfa=(((L+(L*k))-((L*k)*((p3/p4)^(1/n))))-(((k*L)+lo+L)-(((k*L)+lo)*((p3/p4)^(1/n)))))/((L+L*k)-((L*k)*((p3/p4)^(1/n))))
disp(pcfa*100,"Percentage change in free air delivery:")
pcpa=pcfa;......//Percentage change in power delivered
disp(pcpa*100,"Percentage change in power delivered:")
