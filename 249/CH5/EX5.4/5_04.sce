clear
clc
//With 50% inert 2 vol of feed would give 4 vol of completely converted gas
//Expansion factor is
eA=(4-2)/2;
//Initial concentration of A(mol/litre)
CAo=0.0625;
//For 80% conversion
xAo=0;xAf=0.8;k=0.01;
//For plug flow space time(t) is given by
//t=CAo*integral(dxA/-rA)
X=integrate('sqrt((1+xA)/(1-xA))','xA',xAo,xAf);
t=sqrt(CAo)*X/k;
printf("\n Space time(sec) needed is %f \n",t)