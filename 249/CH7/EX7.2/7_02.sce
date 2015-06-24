clear
clc
//Initial Concentration(mol/litre)eactant in combined feed
CAo=10;CBo=10;
//For 90% Conversion
XA=0.9;
CAf=CAo*(1-XA);
//Instantaneous fractional yield of desired compound is
//Q(R/A)=dCR/(dCR+dCS)=CA/(CA+CB^1.5)
//But CA=CB so Q(R/A)=CA/(CA+CA^1.5)
//For Plug Flow
//Overall Fractional Yield(Qp)is
CA=CAf;
Qp=(-1/(CAo-CAf))*integrate('1/(1+CA^0.5)','CA',CAo,CAf);
CRf=9*Qp;
printf("\n Part a")
printf("\n For Plug Flow")
printf("\n Concentration of R(mol/litre) in the product stream is %f \n",CRf)
//Mixed Flow
//Overall Fractional Yield(Qm)is
Qm=CA/(CA+CA^1.5);
CRf=9*Qm;
printf("\n Part b")
printf("\n For Mixed Flow")
printf("\n Concentration of R(mol/litre) in the product stream is %f \n",CRf)
//Plug flow A,Mixed flow B
CAo=19;CB=1;
Q=-1/(CAo-CAf)*integrate('CA/(CA+CB^1.5)','CA',CAo,CAf);
CRf=9*Q;
printf("\n Part c")
printf("\n For Plug flow A,Mixed flow B")
printf("\n Concentration of R(mol/litre) in the product stream is %f \n",CRf)
disp('The result for plug flow varies as there seems to be typographical error in integration done in book')