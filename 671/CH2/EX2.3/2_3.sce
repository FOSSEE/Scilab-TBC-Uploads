r1=100
v=3/4

r2=r1*v/(1-v)


function p=parallel(r1,r2)
    p=r1*r2/(r1+r2)
endfunction

//////Part1
R2_eq=parallel(r2,10000)
k=R2_eq/(R2_eq+r1)
change1=(3/4-k)/(3/4)*100
disp(change1)
//////Part2

R2_eq=parallel(r2,1000)
k=R2_eq/(R2_eq+r1)
change2=(3/4-k)/(3/4)*100
disp(change2)