
//

//

t1=80-70
l=50
k=1/(cos(20*(%pi/180)))

k1=k*(sin(t1*(%pi/180)))
t3=asin(k1)
t3=t3*(180/(%pi))
printf("\n theta 3= %0.3f ",t3)

t3=180-t3
t2=180-(t3+t1)

r=l*(sin(t1*(%pi/180)))/(sin(0.6*(%pi/180)))
printf("\n Radius R= %0.3f ",r)
