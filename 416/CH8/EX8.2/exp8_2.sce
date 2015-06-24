clear
clc
disp("example 8.2")
flow=[0 1000 800 600 400 400 1200 2400 2400 1000 400 400 1000] //flow in matrix from in the order of months
y=0:12
h=150
e=0.85
avg=sum(flow)/12
printf("\naverage rate of inflow is %dcu-m/sec",avg)
p=(735.5/75)*avg*h*e
printf("\npower developed is %fkW",p)
plot2d2(y,flow)

xtitle('hydrograph','months','run in cu-m/sec')
disp("hydrograph is ploted in figure")
for x=1:12
       t=flow(1,x)
    a=avg
        if t<a|t==avg then
        t=0
    else
        t=t-1000
       end
     flow1(1,x)=t;
    end
sto=sum(flow1)
printf("\nstorage capacity of given plant is %dsec-m-month",sto)