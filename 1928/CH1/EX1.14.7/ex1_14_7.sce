//Chapter-1,Example1_14_7,pg 1-60

//primitive vectors

a=1.2                                   //in amstrong unit

b=1.8                                   //in amstrong unit

c=2                                    //in amstrong unit

//miller indices of the plane

h=2

k=3

l=1

//therefore intercepts are a/h,b/k,c/l

x=a/h

y=b/k

z=c/l

//this gives intercepts along x axis as x amstrong but it is given tthat plane cut x axis at 1.2 amstrong .

t=1.2/x

//this shows that the plane under consideration is another plane which is parallel to it(to keep miller indices same)

n=t*y                                   //Y intercept

p=t*z                                   //Z intercept

printf("           1) Y intercept=")

disp(n)

printf("amstrong")

printf("   2)Z intercept=")

disp(p)

printf("amstrong")
