//Example 3.16//
// Following the calculations of sample problem 3.3 we find that the length of the body diagonal is
rMg=0.078;//nm // Ionic radius of Magnesium (From Appendix 2)
rO=0.132;//nm // Ionic radius of Oxygen (From Appendix 2)
a=2*rMg+2*rO
//mprintf("a = %f nm",a)
l=sqrt(3)*a
mprintf("l = %f nm",l)
c=1;// Mg^2+
i=c/l//nm
mprintf("\n i = %f Mg^2+/nm",i)
//similarly
i2=c/l
mprintf("\n i2 = %f O2-/nm",i2)
mprintf("\n(1.37Mg2+ + 1.37O2-)/nm")
