clc
disp("example 2.4")
printf("\n")
printf("the chronological load curve is plotted in fig 1 the durition of loads is as under :")
lc=[20*ones(1,5),40*ones(1,4),80*ones(1,9),100*ones(1,4),20*ones(1,2)]
ldc=gsort(lc);
[mm,nn]=size(ldc)
printf("\n")
for i=1:nn
printf("\t%dW",ldc(i));//arranging accending order
end
e=sum(ldc)
printf("\nthe load duration curve is ploted in 2 the energy produced by plant in 24 hours \n =100x4+80x(13-4)+40(17-13)+20(24-17)=%dMWh \n",e);
lff=e/(24*max(ldc));
printf("load factor =1420/2400=%f=%f in persent",lff,lff*100)
t=1:1:24
subplot(121);
plot2d2(t,lc);
xtitle("chronological curve","time","load MW");
subplot(122);
plot2d2(t,ldc);
xtitle("load duration curve","time","load MW");
