//Example 2.5

 x0=1
 x1=4
 x2=6
 x3=0
  x4=3.5
   K(1)=1.5709
 K(4)=1.5727
 K(6)=1.5751
  P2(1)=1.5709
 P2(4)=1.5727
 P2(6)=1.5751
 
  p0=K(1)
  U0=1    //U0=U0(x')
 K1=[P2(1)-P2(4)]/(1-4)
 // Where as K1 = K[1,4]
 U1=(x4-x0)*U0      //U1=U1(x')
 p1=p0+U1*K1         //p1=p1(x')
 
 //adding the point x2=6
 K2=[P2(4)-P2(6)]/(4-6)
        // Where as K2 =K[4,6]
        
 K3={K1-K2}/(1-6)
        // Where as K1 = K[1,4] , K2 =K[4,6] ,K3 = K[1,4,6]
   U2=(x4-x0)*(x4-x1)        //U2=U2(x')
   p2=p1+U2*K3      //p2=p2(x')
 
   // to check error approximation for k(3.5) we add point x3=0
  // K(0)=1.5708=a
  // p2(0)=1.5708=K(0)
  a=1.5708
   K4=[P2(6)-a]/(6-0)
 //K4=K[x2,x3]=[6,0]
K5=-0.000001
 //K5=K[x0,x1,x2,x3]
 U3=(x4-x2)*(x4-x1)*(x4-x0)      //U3=U3(x')
 
 p3=p2+U3*K5
 //p3=p3(x')

