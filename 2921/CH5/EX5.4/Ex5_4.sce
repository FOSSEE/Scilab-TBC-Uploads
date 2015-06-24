clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-5.4 Page No.98\n');

Su=95000;              //[lb/in^2] Ultimate strength
Sy=60000;              //[lb/in^2] Yield strength
SF=1.5;                //[] Safety factor

Fmax=1000;            //[lb] Maximum load
Fmin=-6000;           //[lb] Minimum load

Fmean=(Fmax+Fmin)/2;   //[lb] Mean load
Fmean=abs(Fmean);      //[lb] Considering absolute value
Falt=(Fmax-Fmin)/2;    //[lb] Alternating load

Csize=1                //[] Assuming b<0.5 in
Ctype=0.8              //[] Axial stress
Csurface=0.86          //[] Machined surface Figure 5.7b

Sn=Csize*Csurface*Ctype*(0.5*Su); //[lb/in^2] Modified endurance limit

A=((Fmean/Sy)+(Falt/Sn))*SF;      //[in^2] Area of cross section of rod

b=sqrt(A);                        //[in] Side of square cross section

mprintf('\n The required square size in the center section is %f in.',b);
