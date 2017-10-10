
//

//

t1=30.5
t2=40.5
EF=175
cb=1500

k1=tan((t1/2)*(%pi/180))
k2=tan((t2/2)*(%pi/180))

r=EF/(k1+k2)
printf("\n Radius R= %0.3f ",r)

et1=r*k1
ft2=r*k2

t3=180-(t1+t2)
printf("\n angle Theta= %0.3f ",t3)
k3=(sin(t2*(%pi/180)))/(sin(t3*(%pi/180)))
k4=(sin(t1*(%pi/180)))/(sin(t3*(%pi/180)))

be=EF*k3
bf=EF*k4

t1d=(%pi*r*t1)/180
dt2=(%pi*r*t2)/180

printf("\n curve length T1D= %0.3f ",t1d)
printf("\n curve length DT2= %0.3f ",dt2)

ct1=cb-(be+et1)

ct2=ct1+t1d+dt2
printf("\n chainage of T1= %0.3f ",ct1)
printf("\n chainage of T2= %0.3f ",ct2)
