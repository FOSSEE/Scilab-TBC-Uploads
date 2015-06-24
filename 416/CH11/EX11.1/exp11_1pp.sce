clc
clear
disp("example 11 1")
wd=[0 5 8 12 13 17 21 24] //given week days
wlld=[100 150 250 100 250 350 150] //given load in week days
wld=[wlld 0]
we=[0 5 17 21 24]//given week ends
wed=[100 150 200 150]//given load in week ends
wed=[wed 0]
h=90//head
f=50 //flow
et=0.97//is available for 97 persent
eff=0.9 //efficiency
tl=0.05 //transmission loss
pa=735.5*f*h*eff/75 //power available
nap=pa*(1-tl) //net available power
he=nap*24/1000 //hydro energy for 24 in MW
he1=round(he/100)*100
[m,n]=size(wd)
[x,y]=min(wlld)
[q,r]=max(wlld)
for i=1:n-1
    fl(i)=wd(i+1)-wd(i)
end
[o,p]=size(we)
for i=1:p-1
    fll(i)=we(i+1)-we(i)
end
for j=x:10:q
    pp=wlld-j
    for l=1:n-1
    if pp(l)<0 then
        pp(l)=0
    end
    end
    heq=pp*fl
    heq=round(heq/100)*100
    if heq==he1 then
        break
    end
end//rearrangeing for plot
subplot(211) 
plot2d2(wd,wld)
xtitle("chronological load curve for week day for example 11.1","hour of day","load MW")
subplot(212)
plot2d2(we,wed)
xtitle("chronological load curve for weekend day for example 11.1","hour of day","load MW")

printf("power available from the hydro plant for %dMW of the time is %.2fMW",et*100,pa/1000)
printf("\nnet available hydra power after taking transmission loss into account %.2fMW",nap/100)
printf("\nhydro energy available during 24 hours %.2fMW",he)
printf("\nthe magnitude of hydro power is %dMW \ntotal capacity of hydro plant required on week days %dMW ",q-j,(q-j)/(1-tl))
printf("capacity of thermal plant on week days %dMW",q)
printf("\nthe schedule for hydro plant is on week days")
for i=1:n
    if wd(i)>12 then
        wd(i)=wd(i)-12
    end
end
disp(wd)
disp(round(pp/(1-tl)))
disp("the schedule for thermal plant is on week days")
disp(wd)
disp(wlld-pp)
[m,n]=size(we)
[x,y]=min(wed)
[q,r]=max(wed)
for j=x:10:q
    pp=wed-j
    for l=1:n-1
    if pp(l)<0 then
        pp(l)=0
    end
end
pp(n)=[]
    heq=pp*fll
    heq=floor(heq/100)*100
    if heq==he1 then
        break
    end
end
printf("\nthe magnitude of hydro power is %dMW \ntotal capacity of hydro plant required on week ends %dMW ",q-j,(q-j)/(1-tl))
printf("capacity of thermal plant on week ends %dMW",q)
printf("\nthe schedule for hydro plant is on week ends")
for i=1:n
    if we(i)>12 then
        we(i)=we(i)-12
    end
end
disp(we)
disp(round(pp/(1-tl)))
disp("the schedule for thermal plant is on week days")
disp(we)
pp(n)=0
disp(wed-pp)
