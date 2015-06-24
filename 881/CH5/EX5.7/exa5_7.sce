clc;
//Example 5.7
//Page no 184


//solution

Fs=100; //MHz
Fif=10.7; //MHz
Q=100; 
Q1=40;
Q2=50;


//(a)

disp("(a)");

flo=Fif+Fs;

Fim=Fs+2*Fif;

disp('MHz',Fim,"Fimage = ");

p=((Fim/Fs)-(Fs/Fim));

disp(p,"p = ");

IFRR=sqrt(1+(Q^2)*(p^2));

disp(IFRR,"IFRR = ");

//(b)

disp("(b)");

ifrr=20*log10(IFRR);

disp('dB',ifrr,"IFRR in dB = ");

//(c)

disp("(c)");

fif=(455/(10^3));

fim=Fs+2*fif;

disp('MHZ',fim,"Fimage = ");

p1=((fim/Fs)-(Fs/fim));

disp(p1,"p = ");

IFRR1=sqrt(1+(Q^2)*(p1^2));

disp(IFRR1,"IFRR = ");

//(d)

disp("(d)Critical coupling factor of the primary and secondary circuit if IF transformer,");

kc=(sqrt(Q1*Q2))^-1;

disp(kc,"Kc = ");
