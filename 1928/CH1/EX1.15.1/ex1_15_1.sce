//Chapter-1,Example1_15_1,pg 1-68

d=4.255*10^-10                          //interplaner spacing

l=1.549*10^-10                          //wavelength of x ray

//part 1: for smallest glancing angle(n=1)

n1=1

//using Bragg's law n*l=2*d*sin(q)

q=asind(n1*l/(2*d))

printf("        1)glancing angle=")

disp(q)

printf("degree")

//part 2: for highst order

//for highest order sin(q) not exceed one i.e maximum value is one

//using Bragg's law n*l=2*d*sin(q)

n2=2*d/l                                //since sin(q)is one

printf("  2)highest order possible =")

disp(floor(n2))
