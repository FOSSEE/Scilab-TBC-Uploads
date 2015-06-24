//Chapter-6,Example6_1_3,pg 6-7

y=1.5                                  //deflection in the beam

d=0.42                                 //distance between two plates 

D=28                                   //distance of screen from center of plates 

l=1.8                                  //length of plates

Va=1.6*10^3                            //anode voltage

V=2*y*d*Va/(D*l)

Vin=V/6                                //as amplifier gain is 60

printf("\napplied voltage is  Vin = %.2f V\n",Vin)
