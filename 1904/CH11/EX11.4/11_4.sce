//To Determine the Equivalent System Reliability of Each configuration
//Page 612
clc;
clear;

Ri=0.85;

deff('x=relp(y,z)','x=1-((1-(Ri^y))^z)')//Equal Parallel Combination

deff('x=rels(y,z)','x=(1-((1-Ri)^y))^z') //Equal Series Combination

//Case 1: 4 elements in series

Req1= rels(1,4);

//Case 2: Two Comination of 4 elements in series, parallel to each other

Req2=relp(4,2);

//Case 3 : ((two elements in series)//(two elements in series))in series with ((two elements in series)//(two elements in series))

//Two Segments
R1=relp(2,2);
R2=relp(2,2);
Req3=R1*R2;

//Case 4 : (two elements in parallel)in series with ((three elements in series)//(three elements in series))

//Two Segments
R1=relp(1,2);
R2=relp(3,2);
Req4=R1*R2;

//Case 5, 4 groups of (2 elements in parallel) connected in series to each other
Req5=rels(2,4);

printf('The Equivalent System reliability for:\n')
printf('a) Configuration A : %g\n',Req1)
printf('b) Configuration B : %g\n',Req2)
printf('c) Configuration C : %g\n',Req3)
printf('d) Configuration D : %g\n',Req4)
printf('e) Configuration E : %g\n',Req5)
