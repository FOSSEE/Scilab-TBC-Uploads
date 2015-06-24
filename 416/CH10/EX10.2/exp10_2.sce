clear
clc
disp("example 10.2")
mp=250     //from example 10.1
function [ic]=unit1(p1)
    ic=0.2*p1+30
endfunction
function [ic]=unit2(p2)
    ic=0.15*p2+40
endfunction
mil=20
ttt=225
function [p1,p2]=un(ic)
    p1=(ic-30)/0.2
    p2=(ic-40)/0.15
endfunction
for x=40:5:60
    [e,r]=un(x)
    if ttt==e+r then
        printf("for the same incremental costs unit1 should supply %dMW and unit 2 shold supply %dMW,for equal sharing each unit should supply %3.1fMW",e,r,ttt/2)
        break
    end
end
opo=ttt/2
u1=integrate('unit1','p1',opo,e)
u2=integrate('unit2','p2',r,opo)
uuu=(u1+u2)*8760
printf("\nyearly extra cost is (%3.2f-%3.2f)8760 =%dper year",u1,u2,uuu)
printf("\nthis if the load is equally shared by the two units an extra cost of Rs.%d will be incurred.in other words economic loading would result in saving of Rs.%dper year",uuu,uuu)