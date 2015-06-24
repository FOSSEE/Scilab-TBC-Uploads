disp("Experiment: Three horses race together twice")   
Ph1=1/2;  //probability of first horse winning the race
Ph2=1/3;   //probability of second horse winning the race
Ph3=1/6;   //probability of third horse winning the race
S=[11,12,13,21,22,23,31,32,33]  //sample space where 11 implies first horse winning the first and second race both,12 implies first horse winning the first race and second horse winning the second race and so on
P11=Ph1*Ph1  //probability of first horse winning both races
P12=Ph1*Ph2  //probability of first horse winning the first race and second horse winning the second race
P13=Ph1*Ph3  //probability of first horse winning the first race and third horse winning the second race
P21=Ph2*Ph1  //probability of second horse winning the first race and first horse winning the second race
P22=Ph2*Ph2  //probability of second horse winning both the races
P23=Ph2*Ph3  //probability of second horse winning the first race and third horse winning the second race
P31=Ph3*Ph1  //probability of third horse winning the first race and first horse winning the second race
P32=Ph3*Ph2  //probability of third horse winning the first race and second horse winning the second race
P33=Ph3*Ph3  //probability of third horse winning both the races   
disp(P31,'probability of third horse winning the first race and first horse winning the second race is')