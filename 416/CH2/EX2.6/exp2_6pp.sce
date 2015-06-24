clc
disp("Example 2.6")
time=[5 9 18 22 24]
loadt=[20 40 80 100 20]                      //given time and load
k=size(time)
k=k(1,2)
timed(1,1)=time(1,1)
for x=2:k                                      //finding time duration of each load
    timed(1,x)=time(1,x)-time(1,x-1)
end
[m n]=gsort(loadt)                //sorting decresing order
for x=1:k                                 //sorting the load and timeduration correspondingly
    timed1(1,x)=timed(1,n(x))
end
tim(1,1)=timed1(1,1)
for x=2:k
    tim(1,x)=timed1(1,x)+tim(1,x-1)
end
lo(1,1)=24*min(m)
m(k+1)=[]
printf("the energy at different load levels is as under :")
printf("\nload=%dMW,energy=%dMWh",m(k),lo(1,1))
y=2
for x=k-2:-1:1
   lo(1,y)=lo(1,y-1)+(tim(1,x))*(m(x)-m(x+1)) 
   t=m(x);l=lo(1,y)
    printf("\nload=%dMW,energy=%dMWh",t,l)
    y=y+1
end
for x=1:k
    for y=x+1:k
        if m(1,x)==m(1,y) then
            m(1,y)=[]
        end
    end
end
pop=gsort(m,'g','i')
subplot(121)
plot(lo,pop)
xtitle("energy load curve","energy","load")
//time=[5 9 18 22 24]
//loadt=[20 40 80 100 20]
printf("\nthe energy load curve is plotted in fig 1 \nthe energy supplied up to different times of the day is as under :")
et(1,1)=time(1,1)*loadt(1,1)
for x=2:k
    printf("\nenergy supplied upto %d is %dMWh",time(1,x-1),et(1,x-1))
    et(1,x)=et(1,x-1)+loadt(1,x)*(time(1,x)-time(1,x-1))
    
end
subplot(122)
plot(time,et)
xtitle("masscurve","time in hours","load in MW")
