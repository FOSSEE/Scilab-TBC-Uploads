clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-5.3 Page No.97\n');

Su=90000;                  //[lb/in^2] Ultimate strength (Appendix 8)
Sy=37000;                  //[lb/in^2] Yield strength (Appendix 8)
Sni=34000;                 //[lb/in^2] Endurance limit (Appendix 8)
SF=1.6;                    //[] Safety factor

F=1000;                    //[lb] Load
L=12;                      //[in] Length of cantilever beam

Mmax=F*L;                  //[lb*in] Maximum bending moment
Mmin=0;                    //[lb*in] Minimum bending moment

Csize=0.85                 //[] Assuming 0.5<D<2 in
Ctype=1;                   //[] Bending stress
Csurface=1;                //[] As surface is polished

Malt=(Mmax-Mmin)/2;        //[lb*in] Alternating bending moment

Mmean=(Mmax+Mmin)/2;       //[lb*in] Mean bending moment

Sn=Csize*Csurface*Ctype*Sni; //[lb/in^2] Modified endurance limit

Z=((Mmean/Su)+(Malt/Sn))*SF; //[in^3] Section modulus

D=(32*(Z)/%pi)^(1/3);        //[in] Diameter of bar

mprintf('\n The required diameter of bar using the soderberg method is %f in.',D);

//Note that the modified Goodman results in a less conservative size as would be expected from figure 5.10
