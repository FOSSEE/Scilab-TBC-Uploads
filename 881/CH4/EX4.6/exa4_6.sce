clc;
//Example 4.6
//Page no 133
//Solution

m=0.8;
Aq=100;
Fc=500; //kHz
Vc=5*(10^-3); //mV
Fm=1000; //Hz

//(a)

disp("(a)Substituting into equation 4-34(pgno 132), ");

Am=Aq*(1+m);

disp(Am," Amax = ");

am=Aq*(1-m);

disp(am,"Amin = ");

//(b)

Vom=Am*Vc;

vom=am*Vc;

disp('V',Vom,"(b)Vout(max) =  ");
disp('V',vom,"Vout(min) =  ");
