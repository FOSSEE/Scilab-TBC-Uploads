clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-5.1 Page No.93\n');

SF=2;                     //[] Safety factor
F=500;                    //[lb] Load
L=40;                     //[in] Length of shaft
Su=95000;                 //[lb/in^2] Ultimate strength (Appendix 4)
Sy=60000;                 //[lb/in^2] Yield strength (Appendix 4)

Mmax=F*L/4;               //[lb*in] Maximum bending moment
Mmin=-F*L/4;              //[lb/in^2] Minimum bending moment

Csurface=1;               //[] As surface is polished
Csize=0.85;               //[] Assuming 0.5<D<2
Ctype=1;                  //[] Bending stress

Sn=Csize*Csurface*Ctype*(0.5*Su); //[lb/in^2] Endurance limit

if Mmax==abs(Mmin) then
    Sm=0;                //[lb/in^2] Mean stress
end

Sa=Sn/SF;                //[lb/in^2] As (1/SF)=(Sm/Sy)+(Sa/Sn) from soderberg equation

Sa_Z=(Mmax-Mmin)/2;      //[lb*in^2] Product of altenating stress and section modulus

Z=Sa_Z/Sa;               //[in^4] Section modulus

D=(32*Z/%pi)^(1/3);      //[in] Diameter of shaft

D1=1.375;                //[in] Next higher available is 1.375 in. so use D1

mprintf('\n The required diameter of rotating shaft is %f in.', D1);
