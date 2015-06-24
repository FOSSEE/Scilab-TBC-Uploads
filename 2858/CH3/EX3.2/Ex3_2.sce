//example 3.2
clc; funcprot(0);
Gamma=105;//lb/ft^3
Gammasat=118;//lb/ft^3
FS=3;
pa=2014.125;//lb/ft^2
Depth=[5,10,15,20,25];
N60=[4,6,6,10,5];
sigmao=[0,0,0,0,0];
phi=[0,0,0,0,0]
Gammaw=62.4;
s=0;
printf("depth (ft)\tN60\t  \tstress(lb/ft^2)\t phi(degrees)\n")
for i=1:5
    sigmao(i)=2*Gamma+(Depth(i)-2)*(Gammasat-Gammaw);
    phi(i)=sqrt(20*N60(i)*sqrt(pa/sigmao(i)))+20;
    printf(" %.2f\t       %.2f\t\t   %.2f  \t%.2f \n",Depth(i),N60(i),sigmao(i),phi(i));
avgphi=phi(i)/5+s;
s=avgphi;
end
disp(round(avgphi),"average friction angle in degrees");
//using graph get the values of other terms in terms of B and solve for B
deff('y=f(x)','y=-150000/x^2+5263.9+5527.1/x+228.3*x');
[x, v, info ]=fsolve(4,f);
disp(x,"the width in ft");



