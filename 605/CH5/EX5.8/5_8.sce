
//data
Er=2.05
ur=1
a=.016 //m
b=.0071   //m
c=.0156   //m
m=1  
p=1 
printf("\nresult:-")
fr=(300/sqrt(ur*Er))*sqrt((m/(2*a))^2+(p/(2*c))^2) 
printf("\nfr=(300/sqrt(ur*Er))*sqrt((m/(2*a))^2+(p/(2*C))^2)\n =%.3e MHz",fr)
