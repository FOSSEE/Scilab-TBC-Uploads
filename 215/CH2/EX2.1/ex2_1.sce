//Example 2.1
//Computation of power absorbed by each part
//From figure 2.13a
V=2;I=3;
//We have Power(P)=V*I
P=V*I
printf("a) Power =%dW\n",P)
if P>0 then
    printf("Power is absorbed by the element\n")
else
    printf("Power is supplied by the element\n");
end 

clear P;
//From figure 2.13b
V=-2;I=-3;
//We have Power(P)=V*I
P=V*I
printf("b) Power =%dW\n",P)
if P>0 then
    printf("Power is absorbed by the element\n")
else
    printf("Power is supplied by the element\n")
end

//From figure 2.13c
V=4;I=-5;
//We have Power(P)=V*I
P=V*I
printf("c) Power =%dW\n",P)
if P>0 then
    printf("Power is absorbed by the element\n")
else
    printf("Power is supplied by the element\n")
end 
