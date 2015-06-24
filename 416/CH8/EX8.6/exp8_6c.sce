clear
clc
disp("example 8.6")
mh=205//mean height
a=1000*10^6//in miters
r=1.25//annual rain fall
er=0.8//efficiency
lf=0.75//load factor
hl=5//head loss
et=0.9//efficiency of turbine
eg=0.95//efficiency of generator
wu=a*r*er/(365*24*3600)
printf("\nwater used is \t\t%fm^3/sec",wu)
eh=mh-hl
printf("\neffective head is \t%dm",eh)
p=(735.5/75)*(wu*eh*et*eg)
printf("\npower generated is \t%fkW =\t%fMW",p,p/1000)
pl=p/lf
printf("\npeak load is \t\t%fMw \ntherefore the MW rating of station is \t%fMW",pl/1000,pl/1000)
if eh<=200 then
printf("\nfor a head above 200m pelton turbine is suitable,\nfrancis turbine is suitable in the range of 30m-200m.,\nhowever pelton is most suitable")
else
    printf("only pelton turbine is most suitable")
end
