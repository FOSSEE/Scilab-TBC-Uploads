clc;
r=1.5;                      //radius in ft
t=2;                        //time in sec
s=2*%pi*r;                  //calculating s using circumference of circle
                            //=2*3.14*r in ft
v=s/t;                      //calculating velocity using v=s/t in ft/sec
ac=(v*v)/r;                 //calculating centripetal accelaration in                                 //ft/sec square.
disp(ac,"Centripetal Accelaration = ");  //Displaying Result in ft/sec square.
  