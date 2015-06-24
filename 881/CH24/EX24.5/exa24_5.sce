clc;
//Example 24.5
//Page No 990

disp("Given: The system is shown in figure.");

//solution

cn=23;
NF=4.42;
B=68;

disp("The minimum C/N at the input to the FM receiver is 23dB, ");

cmin=cn+NF;

disp('dB',cmin,"CMin/N = ");

disp("Substituting into equation 24-16 yields, ");

N=-174+B;

disp('dBm',N,"N = ");

Cmin=cmin+N;

disp('dBm',Cmin,"Cmin = ");

disp("Substituting into equation 24-14 yields, ");

Fm=((30*log10(50))+10*(log10(6*0.25*0.125*8))-(10*log10(1-0.99999))-70);

disp('dB',Fm,"Fm = ");

disp("Substituting into equation 24-8 yields, ");

Lp=92.4+(20*log10(8))+(20*log10(50));

disp('dB',Lp,"Lp = ");

disp("          At=Ar= 37.8 dB","          Lf = 4.875","          Lb = 4 dB","From Table 24-3");
    
