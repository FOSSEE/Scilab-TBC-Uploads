//example:-4.4,page no.-175.
// program to calculate and plot the propagation constant of first three propagating surface wave mode.
eipsilar=2.55;c=3*10^8;   // x=d/lamdao;
x=0.001:0.01:1.2;
for n=0:1:4
y=sqrt(eipsilar-((n^2)./(4.*(x^2)*(eipsilar-1))));  // y=beta/lamdao;
plot2d(x,y,style=2,rect=[0,0,1.2,1.6])
end
x=0.001:0.01:1.2;
for n=1:1:4
  y=sqrt(eipsilar-((((2.*n)-1)^2)./(16.*(x^2)*(eipsilar-1))))
  plot2d(x,y,style=6,rect=[0,0,1.2,1.6])
end
xtitle("plot of propagation constant of first 4 mode","d/lamdao","beta/Ko");
legend("TE MODE")