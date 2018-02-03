clear
//
//A cantilever of 3 m span, carrying uniformly distributed load of 3 kN/m is to be designed using cast iron rectangular section. Permissible stresses in cast iron are f = 30 N/mm^2 in tension and fc = 90 N/mm^2 in compression

L=(3)                    //Span of cantilever,m
w=(3)                    //uniformly distributed load,KN/m

M=w*1000000*(L**2)/2        //Maximum moment**N-mm
//let b be the width and d the depth
//Z=b*(d**2)/6

//Since it is rectangular section, N-A lies at mid-depth, and stresses at top and bottom are same. Hence, permissible tensile stress value is reached earlier and it governs the design.
fper=30                       //N/mm^2
b=100                         //mm
f=30   

//f*Z=M

d=sqrt((M*6)/(b*f))

printf("\n d= %0.1f  mm",d)
