clc;
//Example 1.18
//Page no 33

//solution

//(a)

Te=75;

T=290;



f=1+(Te/T);//Noise factor

disp(f,"F = ");

nf=10*log10(f);

disp('dB',round(nf),"NF = ");

//(b)

disp("(b)Noise factor is found by rearranging equation 1-26 ");

F=10^0.6;

disp(round(F),"F = ");

disp("substituting into equation 1-31 gives, ")

te=T*(round(F)-1);

disp('K',round(te),"Te = ");

