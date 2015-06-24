// Example 2.24, page no-44
clear
clc
///for plane (0,0,1)
deff('z=f(x,y)','z=x^0-y^0')
x=0:0.2:3 ;y=x ;
//clf() ;
subplot(311)
fplot3d(x,y,f,alpha=5,theta=31)

///For plane(1,0,1)
deff('z=f(x,y)','z=x^1-y^0')
x=0:0.2:3 ;y=x ;
//clf() ;
subplot(312)
fplot3d(x,y,f,alpha=5,theta=31)

///For plane(1,1,1)
deff('z=f(x,y)','z=x^1-y^1')
x=0:0.2:3 ;y=x ;
//clf() ;
subplot(313)
fplot3d(x,y,f,alpha=5,theta=31)

