clc
clear
disp("example 2.9")
disp("load duration curve in fig1")
disp("the energy consumed upto different times is as ")
a=[0 5 9 18 20 22 24]  //time in matrix format
b=[50 50 100 100 150 80 50] //load in matrix format
for x=1:6
   z(1,x)=((b(1,x)+b(1,x+1))/2)*(a(1,(x+1))-a(1,x))
end
et=0
for x=1:6
    et=et+z(1,x);
    A=a(1,(x+1))
    ett(1,x)=et;
    q(1,x)=a(1,x+1)
    printf("\nfrom mid night upto %d,energy=%dMWh",A,et)
end
q(1,x+1)=[]
[m n]=gsort(b)
m(1,7)=[];m(1,6)=[]; //rearranging for mass  curve
disp("energy curve in fig 2")
t=[0 3.88 15.88 19.88 23]
for j=1:6
    k(1,j)=a(1,(j+1))
end
subplot(121);
plot(t,m);
xtitle("load duration","hours","MW")
subplot(122);
plot(q,ett,-9);
xtitle("energy curve","time","MWh")
