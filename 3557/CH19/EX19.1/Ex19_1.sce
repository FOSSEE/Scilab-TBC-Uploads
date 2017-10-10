//Example 19.1//

t=0;//time
y=100;//nm//thickness of oxide coating
c4=1;//given
c5=y^2-c4*t;//substituting value in the equation
mprintf("c5 = %e nm^2",c5)
//For
t1=1;//h //hour //time
y1=200;//nm //thickness of oxide coating
c4=y1^2-c5 //substituting values in the equation
mprintf("\nc4 = %e nm^2/h",c4)
//Then
t2=24;//h//hour //time
y2=c4*t2+c5
mprintf("\ny2 = %e nm^2",y2)
mprintf("\nor y=854nm (=0.854 mew m) ")
