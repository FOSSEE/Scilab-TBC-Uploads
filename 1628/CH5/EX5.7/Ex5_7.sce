




                      // Example  5.7

                  // We know that Area of Ring is (A=Pi*R*R)
                  //  i.e  A=%pi*R*R*(Q/2%pi)=0.5*R*R*Q;
                  // Hance by using Faraday's Law
                  // e= dQ/dt= d(BA)/dt.
                  //  0.5*B*R*R*(dq/dt).

B=1;
R=1;
f=50;
e=0.5*B*R*R*f*2*%pi;    //  by using Faraday's Law

disp(' emf Devloped between Centre & ring  = '+string(round(e))+' Volt');


         // p 198        5.7
