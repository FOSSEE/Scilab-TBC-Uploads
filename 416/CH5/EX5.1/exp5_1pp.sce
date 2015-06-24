clear
clc
disp("solution of exp 5.1")
aerpe=100*10^6
md=25*10^3
function [u]=ucc(dd,e)
   u=600*dd+0.3*e //rs per kW
   endfunction
sc=30*10^3

a.cci=9000//per kW
a.shr=4000
b.cci=10500
b.shr=3500
c.cci=12000
c.shr=3000
salc=3000
sal=2280
sh=10
tax=0.04
ins=0.5*10^-2
cir=0.07
hv=5000//l cal per kg
fuc=225//rs per ton
acsnm=150000//for each plan
pl=20
dr=cir/((cir+1)^pl-1)
tfcr=cir+dr+tax+ins
printf("depreciation rate %f \n total fixed rate =%f",dr,tfcr)
a.ci=a.cci*sc;b.ci=b.cci*sc;c.ci=c.cci*sc
a.afca=a.ci*tfcr;b.afca=b.ci*tfcr;c.afca=c.ci*tfcr
a.afuc=a.shr*fuc*10^8/(hv*10^3)
b.afuc=b.shr*fuc*10^8/(hv*10^3)
c.afuc=c.shr*fuc*10^8/(hv*10^3)
ass=12*(salc+sh*sal)
tota=a.afca+ass+a.afuc+acsnm
totb=b.afca+ass+b.afuc+acsnm
totc=c.afca+ass+c.afuc+acsnm
    printf("\nannual fixed cost of a is Rs%d   fuel cost of plan a is Rs%d and total cost of a is Rs%d",a.afca,a.afuc,tota)
printf("\nannual fixed cost of b is Rs%d   fuel cost of plan b is Rs%d and total cost of b is Rs%d",b.afca,b.afuc,totb)
printf("\nannual fixed cost of c is Rs%d   fuel cost of plan c is Rs%d and total cost of c is Rs%d",c.afca,c.afuc,totc)

ppt=ucc(md,aerpe)
printf("\nannual cost of purchasing electricty from utility is Rs600x%d+0.3x%.1e is Rs%d",md,aerpe,ppt)
