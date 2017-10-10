//Example 3.15 (a)//
rW=0.137;//nm //atomic radius of tungsten (From appendix 2)
a=(4*rW)/(sqrt(3))//Body centered cubic
mprintf("a = %f nm",a)
l=sqrt(2)*a; // face diagonal length
mprintf("\n l = %f nm",l)

//The area of the  (111) plane within yhe unit cell
c=sqrt(3);//given
d=2;//given
h=(c/d)*l
//mprintf("h = %f ",h)
A=(1/2)*l*h
mprintf("\nA = %f nm^2",A)
c1=3;//atoms
d1=1/6;//atoms
ad=(c1*d1)/A
mprintf("\nad = %f atoms/nm^2",ad)

//(b)
// Following the calculations of sample problem 3.14b we find that the length of the body diagonal is
b=0.143;// atomic radius of Aluminium
a1=(4*b)/(sqrt(2))  //Face centered cubic
//mprintf("\n a1 = %f nm",a1)
l1=sqrt(2)*a1;
mprintf("\nl1 = %f nm",l1)
//the area of the (111) plane within the unit cell is
A1=(1/2)*l1*(c/d)*l1
mprintf("\nA1 = %f nm^2",A1)
e1=(1/2);//atoms
ad2=((c1*d1)+(c1*e1))/A1
mprintf("\nad2 %f atoms/nm^2",ad2)
