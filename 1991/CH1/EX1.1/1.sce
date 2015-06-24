clc
clear
//input
x=(0:50:550)//temperature difference in x axis
y=[0,0.43,0.79,1.10,1.36,1.54,1.69,1.77,1.80,1.78,1.70,1.54]//emf in y axis
//calculation
title("a graph of E vs teta")//setting title for graph
xlabel("temperature difference teta")//setting x label
ylabel("emf E")//setting y label
plot(x,y)//plotting the graph
printf("from the grapgh it can be determined that neutral temperature is 400deg C")
x=(50:50:550)//temperature difference in x axis
y=[8.6,7.9,7.3,6.8,6.2,5.6,5.1,4.5,4.0,3.4,2.8] //E/theta in y axis
plot(x,y,"+-")//plotting the graph
title("a graph of E/teta vs teta")//set title
xlabel("temperature difference teta")//set x label
ylabel(" E/teta")//set y label
legend("E Vs Theta","E/theta Vs theta")
b=-(4.5*10^-6)/400//gradient of graph is b 
a=4.5*10^-6-(b*400)//finding the intercept on y axis by substututing the points(400,4.5) in line equation
printf("\n the value of b is %3.3e VdegC^-2",b)
printf("\n the value of a is %3.3e VdegC^-1",a)

 
