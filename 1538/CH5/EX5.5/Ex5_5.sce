//example-5.5
//page no-146
//given
//wavelength of X-ray
lambda=1.54  //A
//diameter of powder camera
D=114.6  //mm
//radius of powder camera
R=D/2  //mm
//value of l
l1=86
l2=100
l3=148
l4=180
l5=188
l6=232
l7=272
//we know that
//theta=l/4
//so
theta1=l1/4*(%pi)/180   //radians
theta2=l2/4*(%pi)/180   //radians
theta3=l3/4*(%pi)/180   //radians
theta4=l4/4*(%pi)/180   //radians
theta5=l5/4*(%pi)/180   //radians
theta6=l6/4*(%pi)/180   //radians
theta7=l7/4*(%pi)/180   //radians
//now values of sin (theta) and sin(theta2)
S1=sin(theta1)
SS1=(sin(theta1))^2
S2=sin(theta1)
SS2=(sin(theta1))^2
S3=sin(theta1)
SS3=(sin(theta1))^2
S4=sin(theta1)
SS4=(sin(theta1))^2
S5=sin(theta1)
SS5=(sin(theta1))^2
S6=sin(theta1)
SS6=(sin(theta1))^2
S7=sin(theta1)
SS7=(sin(theta1))^2
//so the ratio can be expressed as
//3:4:8:11:12:16:19
printf ("from the extinction rule, we notice that this is an FCC Structure")
//the lattice parameter for highest bragg's angle is
//a=lambda*sqrt(h^2+k^2+l^2)/(2*sin(theta))
//here h^2+k^2+l^2=19
//and let h^2+k^2+l^2 =M for notation
M=19
a=lambda*sqrt(M)/(2*sin(theta6))  //A
printf ("lattice parameter of material is %f A",a)
