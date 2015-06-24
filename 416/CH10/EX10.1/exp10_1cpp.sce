clear
clc
disp("example 10.1")
mp=250 //maximum power
function [ic]=unit1(p1) //ic equation of unit 1
    ic=0.2*p1+30
endfunction
function [ic]=unit2(p2)//ic equation of unit 2
    ic=0.15*p2+40
endfunction
mil=20//minimum load
disp("minimum load ic is")
ic=[unit1(mil),unit2(mil)]
[m,n]=max(ic)
if m==unit2(mil) then
    for x=20:100
      if m==unit1(x) then
        break
        end
    end
    printf("ic of unit1 =ic of unit2 when unit2=%dMW and unit1=%dMW",mil,x)
end
function [p1,p2]=un(ic)
    p1=(ic-30)/0.2
    p2=(ic-40)/0.15
endfunction
printf("load division \n")
me=ceil(unit2(mil)/10)
for x=me*10:5:100
   ii=0
    [m,n]=un(x)
    if m>=mp|n>=mp then
        if n>mp then
            p=2
        end
        if m>mp then
            p=1
        end
        for y=x-5:0.5:x
            [c,v]=un(y)
            m1=[c,v]
            if mp==m1(p) then
                ii=1
                break
            end
        end
        [pp qq]=un(y)
    printf("\n for plant ic %3.1fMW \tthen p1=%dMW\t p2 =%dMW",unit1(pp),pp,qq)
    ii=1
    break
    end
   if ii==0 then
       l=m+n
       printf("\n for plant ic %dMW \tthen p1 is %dMW\t plant2 is %dMW and total is %dMW ",x,m,n,l)
    end
end
a=unit1(mp);b=unit2(mp)
printf("\n for plant ic %dMW \tthen p1 is %dMW\t plant2 is %dMW and total is %dMW ",a,mp,mp,2*mp)
