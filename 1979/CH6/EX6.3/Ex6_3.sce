//Chapter-6, Example 6.3, Page 236
//=============================================================================
clc;
//Input parameters
D=30;//directivity in dB
VSWR=1;//VSWR at each port under matched conditions
C=10;//coupling factor
//Calculations
S41=sqrt(0.1);
S14=S41;//under matched and lossless conditions
S31=sqrt(((S41)^2)/(10)^(D/10));
S13=S31;
S11=(VSWR-1)/(VSWR+1);
S22=S11;
S33=S22;
S44=S33;
//let input power is given at port1 
//p1=p2+P3+p4
S21=sqrt(1-(S41)^2-(S31)^2);
S12=S21;
S34=sqrt((0.5)*(1+(S12)^2-0.1-0.0001));
S43=S34
S23=sqrt(1-10^-4-(S34)^2)
S32=S23;
S24=sqrt(1-0.1-(S34)^2)
S42=S24;
[S]=[S11,S12,S13,S14;S21,S22,S23,S24;S31,S32,S33,S34;S41,S42,S43,S44];
//Output
mprintf("The scattering matrix is");
disp([S])
//=================================END OF PROGRAM==============================
