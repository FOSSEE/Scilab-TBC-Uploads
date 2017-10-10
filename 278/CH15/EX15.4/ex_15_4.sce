
clc
//solution
//given
l=300//mm
L=400//mm
x=100//mm
P=400//N
ft=50//N/mm^2
t=40//N/mm62
//let d eb dia
M=(1-1/3)*P*l//N-mm
//Z=(%pi/32)*d^3=0.0982*d^3
//M=fb*Z=4.91*d^3
d=(M/4.91)^(1/3)//N-mm
printf("the dia of handle is,%f mm\n",d)
//let t1 be thicnes and B eb width of lvever arm
M1=1.25*P*L//N-mm
//B=2t
//Z1=(1/6)*t*B^2=0.6677*t^3
//ft=M/Z
//t1=(M1/(0.667*50))^(1/3)//mm
printf("the thcikness  is,%f mm\n",(M1/(0.667*50))^(1/3))
//let D be dia of journal
printf("the thickness of lever arm is say 20 mm\n")
t1=20//mm
B=2*t1//mm
printf("the width of lever arm is,%f mm\n",B)
Te=P*(sqrt((2*(l/3) + x)^2 + L^2 ))//N-mm
//Te=(%pi/16)*t*D^3=7.86*D^3
D=(Te/7.86)^(1/3)//mm
printf("the dia met of journal is,%f mm\n",D)
