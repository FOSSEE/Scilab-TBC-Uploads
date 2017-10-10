clear
//
//given
f=50
ns=1000
//m=90/6*3
m=5
//angle is obtained as 12
//x=12
//angle=(m*x)/2
//x=30 //assuming for convinience
//a=(180/%pi)*(30)
//b=(%pi/180)*(a)
//c=sin(b)
//y=x/2
//y=6 //assuming for convinience
//d=(180/%pi)*(y)
//e=(%pi/180)*(c)
//g=sin(e)
//kd=c/(5*g)
kd=0.96
//after calculations
printf("\n The distribution factor=0.96")
kp=0.98 //%pi tch factor=cos(20/2)
//case a
kw=kd*kp
printf("\n %0.3f ",kw)
//case b
t1=(90*4)/(3*2) //number of turns per stator phase
e1=415
flux=415/((3**0.5)*4.44*0.94*50*60)
printf("\n flux in the air gap= %0.3f  Wb",flux)
//case c
t2=(120*2)/(3*2)
a=t1/t2 //transformation ratio
printf("\n a =  %0.3f ",a )

//case d
//e2=e1/a //the induced rotor voltage per phase
e2=415/((3**0.5)*1.5)
printf("\n the induced rotor voltage per phase is= %0.5f  V",e2)
