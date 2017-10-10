//Example 3.17//

// Following the calculations of sample problem 3.3 we find that the length of the body diagonal is
rMg=0.078;//nm // Ionic radius of Magnesium (From Appendix 2)
rO=0.132;//nm // Ionic radius of Oxygen (From Appendix 2)
a=2*rMg+2*rO
//mprintf("a = %f nm",a)
l=sqrt(2)*a
mprintf("l = %f nm",l)
d=(sqrt(3)*l)/2 //height
//mprintf("\nd = %f",d)
A=(1/2)*l*d //planar area
mprintf("\n A = %f nm^-2",A)
c=2;//ions
id=c/A; //ionic density for Mg2+
mprintf("\n id = %f nm^-2  (ionic density for Mg2+)",id)
id1=c/A;//ionic density for O2-
mprintf("\n id1 = %f nm^-2  (ionic density for O2-)",id1)
mprintf("\n 13.1(Mg^2+ or O^2-)/nm^2")
