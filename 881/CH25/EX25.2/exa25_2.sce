clc;
//Example 25.2
//Page No 1018



//solution

Pt=1000;
fb=50*10^6;

Tb=(1/fb);

disp('s',Tb*10^1,"Tb = ");

Eb=Pt*Tb;

disp('J',Eb,"Eb = ");

disp("Expressed as a log with 1 Joule as the reference, ");

eb=10*log10(Eb);

disp('dBJ',eb,"Eb = ")

disp("It is common to express Pt in dBW and Eb in dBW/bps. Thus, ");

pt=10*log10(Pt);

disp('dBW',pt,"Pt = ");

disp('dBW/bps',round(eb),"Eb = ");
