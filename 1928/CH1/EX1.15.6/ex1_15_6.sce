//Chapter-1,Example1_15_6,pg 1-71

n=1                                     //first order maximum

l=%i                                    //wavelength of X ray

//part 1:for(100)

//using Bragg's law n*l=2*d*sin(q)

q1=5.4                                   //glancing angle in degree

dl1=n*l/(2*sind(q1))

//part 2:for(110)

//using Bragg's law n*l=2*d*sin(q)

q2=7.6                                   //glancing angle in degree

dl2=n*l/(2*sind(q2))

//part 3:for(111)

//using Bragg's law n*l=2*d*sin(q)

q3=9.4                                   //glancing angle in degree

dl3=n*l/(2*sind(q3))

//for taking ratio divide all dl by dl1

d1=dl1/dl1

d2=dl2/dl1

d3=dl3/dl1

printf("cubic lattice structure is=")

disp(d3,d2,d1)

