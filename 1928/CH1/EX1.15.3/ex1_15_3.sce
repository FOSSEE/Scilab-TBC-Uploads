//Chapter-1,Example1_15_3,pg 1-69

n1=1                                    //for 1st order

n2=2                                    //for 2nd order

t=3.4                                   //angle where 1st order reflection done

t1=t*%pi/180                            //convert degree to radian

m=sin(t1)

//but from Bragg's law

//n*l=2*d*sin(t)

//for for constant distance(d) and wavelength(l) 

//order(n) is directly proportionl to sine of angle i.e (sin(t))

//n1/n2=sin(t1)/sin(t2)

//assume sin(t2)=a

a=n2/n1*m

t2=asind(a)                              //taking sin inverese in degree

printf("second order reflection take place at an angle=")

disp(t2)

printf("degree")
