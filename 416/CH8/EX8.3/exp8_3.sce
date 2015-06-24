clear
clc
disp("example 8.3")
flow=[1500 1000 500 500 500 1200 2900 2900 1000 400 600 1600]
cod=1000//constant demand
plot2d2(flow)
xtitle('hydrograph for exp 8.3','months','run off in m^3/sec')
avg=sum(flow)/12
if cod<avg then
    for x=1:6
       t=flow(1,x)
        if t>cod|t==avg then
        
        t=0
    else
        t=cod-t
       end
     flow1(1,x)=t;
 end
 
 else
     for x=1:12
       t=flow(1,x)
    a=cod
        if t>a|t==avg then
        t=0
    else
        t=t-cod
       end
     flow1(1,x)=t;
    end
end

sto=sum(flow1)
printf("storage capacity of plant is %dsec-m-month",sto)

