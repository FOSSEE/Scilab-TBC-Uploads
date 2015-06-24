clear
clc
disp("example 5.4")
aer=100*10^6
md=25*10^3
utse=6600*10^4
p=30*10^3
ap=9000//per kW
ahr=4000
bp=10500
bhr=3500
cp=12000
chr=3000
salc=3000
sal=2280
sh=10
t=0.04
i=0.5*10^-2
r=0.07
hv=5000//l cal per kg
fuc=225//rs per ton
mc=150000//for each plan
n=20
dr=r/((r+1)^n-1)
pwf=r/(1-(r+1)^(-n))
afc=ahr*fuc*10^8/(hv*10^3)
bfc=bhr*fuc*10^8/(hv*10^3)
cfc=chr*fuc*10^8/(hv*10^3)
ass=12*(salc+sh*sal)
aaoc=ass+mc+afc
baoc=ass+mc+bfc
caoc=ass+mc+cfc

sol.a.totalannualcost=(t+i)*ap*p+aaoc
sol.b.totalannualcost=(i+t)*bp*p+baoc
sol.c.totalannualcost=(i+t)*cp*p+caoc

sol.a.pinvestement=ap*p;sol.b.pinvestement=bp*p;sol.c.pinvestement=cp*p

sol.a.annuity=utse-sol.a.totalannualcost;
sol.b.annuity=utse-sol.b.totalannualcost;
sol.c.annuity=utse-sol.c.totalannualcost;

sol.a.ratioaandp=sol.a.annuity/sol.a.pinvestement;
sol.b.ratioaandp=sol.b.annuity/sol.b.pinvestement;
sol.c.ratioaandp=sol.c.annuity/sol.c.pinvestement;
function [R]=alt(r)
    R=abs(r/(1-wr))
endfunction
ra=round((sol.a.ratioaandp)*100)
    rb=round((sol.b.ratioaandp)*100)
    rc=round((sol.c.ratioaandp)*100)
for x=-0.12:0.001:-0.07 //for itration
    wr=(1+x)^n
    re=alt(x)
    re=(round(re*100))
        if  re==ra then
     sol.a.return=(abs(x)*100)
        end
        if re==rb then
     sol.b.return=(abs(x)*100)
        end
         if re==rc then
     sol.c.return=(abs(x)*100)
         end
 end
 disp("for (a)")
printf("total annual cost Rs.%d\ninvestement Rs.%d\nannuity Rs%d \nratio of a and b %f \nrate of return %.1fpercent",sol.a.totalannualcost,sol.a.pinvestement,sol.a.annuity,sol.a.ratioaandp,sol.a.return)
disp("for (b)")
printf("total annual cost Rs.%d\ninvestement Rs.%d\nannuity Rs%d \nratio of a and b %f \nrate of return %.1fpercent",sol.b.totalannualcost,sol.b.pinvestement,sol.b.annuity,sol.b.ratioaandp,sol.b.return)
disp("for (c)")
printf("total annual cost Rs.%d\ninvestement Rs.%d\nannuity Rs%d \nratio of a and b %f \nrate of return %.1fpercent",sol.c.totalannualcost,sol.c.pinvestement,sol.c.annuity,sol.c.ratioaandp,sol.c.return)
sb=sol.b.annuity-sol.a.annuity
sc=sol.c.annuity-sol.b.annuity
ib=sol.b.pinvestement-sol.a.pinvestement
ic=sol.b.pinvestement-sol.a.pinvestement
rcb=sb/ib;rcc=sc/ic;
printf("\nsaving in annual cost excluding interest and depreciation B over A \t %d C over A \t %d",sb,sc)
printf("\nadditional investement P is \t\t\t\tB over A \t %d C over A \t %d",ib,ic)
printf("\nrate of saving to investement \t\t\t\tAoverB \t\t %f BoverC  \t%f",rcb,rcc)
printf("\nrate of return on capital investement\n evidently plan A is the best \t\t\t\tA over B \tNegative B over C \tNegative")