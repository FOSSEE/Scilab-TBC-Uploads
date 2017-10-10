//Example 18.8//

//(a)
a=8;// magnetic moment/unit cell
b=5;//moment of Mn2+
m=a*b
mprintf("m = %i ",m)

//(b)
c=16;//(number Fe3+/unit cell)
d=5;//(moment of Fe3+)
m1=-(a*b)+(c*d)
mprintf("\nm1 = %i ",m1)

//(c) A 50:50 mixture will give
a1=0.5;//given
m2=(a1*m1)+(a1*m1)
mprintf("\nm2 = %i ",m2)
