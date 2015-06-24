//Example 1.1
clc,clear

P=65000; //Initial cost of plant
S=5000; // Salvage value of plant
n=15; //useful life of plant in years
r=15/100; //annual rate of compound intrest

// straight line method
q=(P-S)/n;
printf('(i)By straight line method , annual deposit = %d Rs\n',q)
//sinking fund method
q=(P-S)*r/((1+r)^n-1)	;
printf('(ii)By sinking fund method ,annual deposit = %d Rs',q)	
