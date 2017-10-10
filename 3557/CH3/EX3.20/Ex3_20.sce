//Example 3.20//
c=1;//centimeter // opposite side of a triangle
e=3;//centimeter // adjacent side of a triangle
a=atand(c/e)// (As tan = oppposite side/adjacent side)
mprintf("a = %f degree ",a)
a1=180;//degree
b1=2;//given
theta= (a1-a)/b1
mprintf("\ntheta = %f degree",theta)
//Braggs law
rMg=0.078;//nm // Ionic radius of Magnesium (From Appendix 2)
rO=0.132;//nm // Ionic radius of Oxygen (From Appendix 2)
a2=2*rMg+2*rO
//mprintf("a2 = %f nm",a2)
h=1; //spacing between adjacent plane
k=1;//spacing between adjacent plane
l=1;//spacing between adjacent plane
d=(a2)/sqrt(h^2+k^2+l^2)
mprintf("\n d = %f nm",d)
//substituting to obtain lamda for n=1
//for n=1
l1=b1*d*sind(theta)
mprintf("\n l1= %f nm",l1)
//for n=2
l2=(b1*d*sind(theta))/b1
mprintf("\n l2 = %f nm",l2)
//for n=3
l3=(b1*d*sind(theta))/e;
mprintf("\n l3 = %f nm",l3)
