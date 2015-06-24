//chapter-4,Example4_8,pg 490

//enter binary 1-bit values only

printf("RS flip-flop truth table\n")

S=input("enter value of S")

R=input("enter value of R")

Qn=input("Enter previous value of Q")

En=input("enter enable value")

if En==0  then

op=Qn

printf("op=%.f",op)

else if S==0&R==0 then

op=Qn

printf("op=%.f",op)

else if S==0&R==1 then

op=0

printf("op=%.f",op)

else if S==1&R==0 then

op=1

printf("op=%.f",op)

else if (S==1&R==1) then
    
printf("output not determinable\n")

end

end

end

end

printf("the relations are\n")

printf("Qn=(R+Qn*)*\n")//Q*=bitcmp(Q)

printf("Qn*=(S+Qn)*")