//Chapter-1,Example1_15_10,pg 1-73

//for line -A

n1=1                                    //1st order maximum

q1=30                                   //glancing angle in degree

//using Bragg's law for line A n1*l1=2*d1*sin(q1)

//d1=n1*l1/(2*sin(q1))

//for line B

l2=0.97                                 //wavelength in amstrong unit

n2=3                                    //1st order maximum

q2=60                                   //glancing angle in degree

//using Bragg's law for line B n2*l2=2*d2*sin(q2)

//since for both lines A and B we use same plane of same crystal,therefore

//d1=d2

//therefore equution became n2*l2=2*n1*l1/(2*sin(q1))*sin(q2)

//by arranging terms we get


l1=n2*l2*2*sind(q1)/(2*n1*sind(q2))

printf("wavelength of the line A=")

disp(l1)

printf("amstrong")
