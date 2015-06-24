//Chapter-1,Example1_15_9,pg 1-72

d=2.82*10^-10                           //interplaner spacing

t=10                                    //glancing angle

//for part 1

n=1                                     //first order maximum

//using Bragg's law n*l=2*d*sin(t)

l=2*d*sind(t)/n

printf("        1)wavelength=")

disp(l)

printf("meter")

//for part 2

n1=2

//using Bragg's law n*l=2*d*sin(q)

q=asind(n1*l/(2*d))

printf("   2)glancing angle=")

disp(q)

printf("degree")

//for part 3

//for highest order sin(q) not exceed one i.e maximum value is one

//using Bragg's law n*l=2*d*sin(q)

n2=2*d/l                                //since sin(q)is one

printf("  3)highest order possible =")

disp(floor(n2))
