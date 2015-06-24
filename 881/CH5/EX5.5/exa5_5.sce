clc;
//Example 5.5
//Page no 172




//solution

Fl=1255; //kHz
Fif=455; //kHz
FRF=800; //kHz
Q=120;

//(a)

Fim=Fl+Fif;

disp('kHz',Fim,"(a)Image Frequency Fim = ");


//(b)

p=((Fim/FRF)-(FRF/Fim));

IFRR=sqrt(1+(Q^2)*(p^2));

disp(IFRR,"(b)IFRR = ");

//(c)

IFRR1=5.6;

IFRRt=IFRR*IFRR1;

disp(IFRRt,"(c)Combined IFRR of both the circuits = ");
