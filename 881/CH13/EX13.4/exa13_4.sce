clc;
//Example 13.4
//Page No 558


//solution

n1=1.48;
n2=1.46;
L=6000;

d=((n1-n2)/n1);

disp(d,"d = ");

t=((d*L)/(3*10^8));

T=0.03996;

disp('ns',T,"Intermodal delay t = ");

disp("Therefore, the maximum data rate Fmax is given by, ");

F=(1/(2*T));

disp('MHz',F,"Fmax = ");
