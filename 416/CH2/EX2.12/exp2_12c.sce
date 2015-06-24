clc
disp("example 2.12")
disp("from the above data,the durations of different loads during one week are")
aw=[0 5 8 12 13 17 21 24]  //given week timings and corresponding loads
lw=[100 150 250 100 250 350 150]
aen=[0 5 17 21 24]   //given weakends timing and corresponding
len=[100 150 200 150]
saw=size(aw);saen=size(aen)
sae=saw(1,2)-1;saen=saen(1,2)-1
for x=1:sae                      //getting duration of load
    tdw(1,x)=aw(1,x+1)-aw(1,x)
end
for x=1:saen
    tden(1,x)=aen(1,x+1)-aen(1,x)
end
taw=5*tdw                         //duration of entair week
taen=2*tden
alw=[taw taen;lw len]
lwen=[lw len]      //arranging load in accending order
[m n]=gsort(lwen)
kn=size(lwen)
kld=kn(1,2)

for x=2:kld
    
    ldcq(:,x)=alw(:,n(x))
    if x>1 then
    ldcq(1,x)=ldcq(1,x)+ldcq(1,x-1)
    end
end

plot2d2(ldcq(1,:),ldcq(2,:))
printf(" load            duration \n 350MW  4x5   =20hours \n 250MW  20+8x5=60hours \n 200MW  60+4x2 =68hours \n 150MW  68+6x5+15x2 =128hours \n 100MW  128+6x5+5x2 =168hours")
disp("the load duration curve is plotted in fig")
disp("the total area under the load duration curve is 31600MWh which represents the energy conumption in one week.")
eclw=ldcq(2,1)*ldcq(1,1)
for x=2:1:kld
   eclw=eclw+(ldcq(2,x)*(ldcq(1,x)-ldcq(1,x-1)))
end
lf=eclw/(max(lwen)*24*7)
printf("total energy consumed is %dWh",eclw)
printf("\ntotal maximum energy could consume %dWh",eclw/lf)
printf("\nload factor =%f",lf)
