clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-5.5 Page No.100\n');

Su=80000;                 //[lb/in^2] Ultimate strength
Sy=71000;                 //[lb/in^2] Yield strength

D=0.6;                    //[in] Diameter of shaft
d=0.5;                    //[in] Diameter of shaft at notch
r=0.05;                   //[in] Radius of notch
Z=%pi*d^3/16;             //[in^3] Polar section modulus
Tmax=200;                 //[lb*in] Maximum load
Tmin=0;                   //[lb*in] Minimum load

Smax=Tmax/Z;              //[lb/in^2] Maximum stress
Smin=Tmin/Z;              //[lb/in^2] Minimum stress

Smean=(Smax+Smin)/2;      //[lb/in^2] Mean stress
Salt=(Smax-Smin)/2;       //[lb/in^2] Alternating stress

Csize=0.85;               //[] Assume 0.5<D<2 in
Csurface=0.88;            //[] Machined surface Figure 5.7b
Ctype=0.6;                //[] Torsional stress

Sn=Csize*Csurface*Ctype*(0.5*Su);  //[lb/in^2] Modified endurance limit

Kt=1.32;                  //[] (D/d)=1.2, (r/d)=0.1 from Appendix 6c

N=inv(Smean/(0.5*Sy)+Kt*Salt/Sn);  //[] Safety factor

mprintf('\n The factor of safety for this design is %f',N);
