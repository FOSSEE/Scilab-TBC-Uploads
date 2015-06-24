clc;
//Example 5.6
//Page no 172


//Solution

FRF=27000; //MHz
Fif=455; //kHz
Q=100;

//(a)

disp("(a)From equation 5-7(refer pgno 165)");

flo=FRF+Fif;

Flo=(flo/(10^3));

disp('MHz',Flo,"Flo = ");

//(b)

disp("(b)From equation 5-9 (refer pgno 171) ");

fim=flo+Fif;

Fim=(fim/(10^3));

disp('MHz',Fim,"Flo = ");

//(c)

disp("(c)From equation 5-11 (refer pgno 171)");

p=((fim/FRF)-(FRF/fim));

IFRR=sqrt(1+(Q^2)*(p^2));

disp(IFRR,"IFRR = ");

//(d)

fr=600

fim1=fr+2*Fif;

p1=((fim1/fr)-(fr/fim1));

disp("(d)Rearranging equation 5-11 ");

q=sqrt(((IFRR^2)-1)/(p1^2));

disp(q,"Q = ");
