//Chapter-1,Example1_14_19,pg 1-66

a=2.82*10^-9                            //lattice constant

n=2                                     //FCC crystal

t=17.167                                //glancing angle in degree

q=%pi/180*t                             //glancing angle in radians

//assuming reflection in (1,0,0) plane

h=1

k=0

l=0

d=a/sqrt(h^2+k^2+l^2)

//using Bragg's law , 2*d*sin(q)=n*la

la=2*d*sin(q)/n

printf("wavlength of X-ray=")

disp(la)

printf("m")
