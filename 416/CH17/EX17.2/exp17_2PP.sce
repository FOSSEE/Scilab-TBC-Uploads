clc
clear
disp("example 17 2")
//given
n1=2 //number of generating station
f1=0.03 //F.O.R
a1=1-f1
p1=40 //genetaion station power
n2=1  //number of genreting station 
f2=0.03 //F.O.R for second set
a2=1-f2
p2=30 //generating station power in second set 
function [y]=comb(m,r)
y=factorial(m)/(factorial(m-r)*factorial(r))
endfunction
for i=0:n2
    pg2(i+1)=comb(n2,i)*((f2)^i)*((a2)^(n2-i))
   co2(i+1)=p2*i;ca2(i+1)=p2*(n2-i)
    printf("\nnumber of units out %d ,capacity out  %dMW ,capacity available  %dMW ,probability %4f ",i,co2(i+1),ca2(i+1),pg2(i+1))
end
printf("\nfor exp 17 1 ")
for i=0:n1
    pg1(i+1)=comb(n1,i)*((f1)^i)*((a1)^(n1-i))
    co1(i+1)=p1*i;ca1(i+1)=p1*(n1-i)
    printf("\nnumber of units out %d ,capacity out  %dMW ,capacity available %dMW ,probability %4f ",i,co1(i+1),ca1(i+1),pg1(i+1))
end
printf("\ncombination of 2 set of stations")
tp=1
pocg=0
for i=0:n1
    for j=0:n2
        og=co1(i+1)+co2(j+1) //now total system capacity out
        cg=ca1(i+1)+ca2(j+1)  //now total system capacity available
        tp=tp-pocg
        pocg=pg1(i+1)*pg2(j+1) //individual stste probability
        printf("\ncapacity out %dMW ,capacity available %dMW ,individual state probability %.6f ,cumulative probability %.6f",og,cg,pocg,tp)
    end
end