//example-8.1
//page no-227
//given
//according to reduced phase rule, we have
//D=C-P+2
C=2  // for two component system
P=1
for P=1:5
     //no of variables
    V=P*(C-1)+2
    //degrees of freedom
    D=C-P+2
end
 printf ("we can see that for P=5 we have D=-1 i.e non existent so,two components cannot have more than 4 phases in equilibrium")
