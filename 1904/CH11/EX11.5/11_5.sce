//To Design the system to meet the given Equivalent System Reliability
//Page 614
clc;
clear;

//Individual System Reliabilities
Ra=0.8;
Rb=0.95;
Rc=0.99;
Rd=0.90;
Re=0.65;

//When All Are Connected in Series

Req=Ra*Rb*Rc*Rd*Re; //Equivalent System Reliability

Rr=0.8; //Required

Rae=Rr/(Rb*Rc*Rd);

//Since Connecting the elements in parallel will increase their reliability
deff('x=rel(Ri,y,)','x=(1-((1-Ri)^y))') //Equal Only Parallel Combination

//Since Connecting the elements in parallel will increase their reliability
//Conditions to Find The Number of Elements to be used
for i= 1:10
    L=i; //Number of Time Element A is used
    R1=rel(Ra,i);
    X=R1-Rae;
    if(abs(X)+X==0)
        continue;
    else
        break;
    end
end

for i= 1:10
    M=i;//Number of Time Element E is used
    R2=rel(Re,i);
    X=R2-Rae;
    if(abs(X)+X==0)
        continue;
    else
        break;
    end
end

printf('a) The Equivalent system Reliability is %g\n',Req)
printf('b) One Each of B,C and D all connected in series are connected in series\nwith the series combination of X(Comination of %g elements of A, All Connected in Parallel)\nand Y(Comination of %g elements of E, All Connected in Parallel) to achieve \n%g Equivalent System Realibility\n',L,M,Rr)
