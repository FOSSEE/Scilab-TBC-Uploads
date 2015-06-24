// 2.7
disp('let coefficient of discharge Cd=1')
H1=0.9;
L=1.2;
g=9.81;
Q=(2/3)*L*(2*g)^0.5*(H1)^(1.5);
th=45;
H2={Q*(15/8)/[(2*g)^0.5*tan(th)]}^(-1/2.5);
printf("Depth of flow = %.1f m",H2)