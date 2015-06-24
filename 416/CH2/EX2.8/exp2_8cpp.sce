clc
disp("example 2.8")
disp("the chronological load curve is plotted in fig 1")
a=[0 5 9 18 20 22 24] //time in matrix format
b=[50 50 100 100 150 80 50]//load in matrix format
for x=1:6
   z(1,x)=((b(1,x)+b(1,x+1))/2)*(a(1,(x+1))-a(1,x))
end
e=sum(z);
printf("energy required required by the system in 24 hrs \n =50x5MWh+((100+50)/2)x4MWh +(100x9)MWh+(100+150)MWh+(150+80)MWh+(80+50)MWh \n =%dMWh",sum(z))
dlf=e/(max(b)*24)
printf("\ndaily load factor =2060/(150x24) =%f",dlf)
plot(a,b)
xtitle("load curve","time","MW")
