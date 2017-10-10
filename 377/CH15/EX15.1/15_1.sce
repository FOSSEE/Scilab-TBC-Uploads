disp("T=Tr*Tnr/(Tr+Tnr)");
Tr=60;
Tnr=100;
T=Tr*Tnr/(Tr+Tnr);
printf('\n Total carrier recombination lifetime is %fnS',T);
disp("η=T/Tr");
n=T/Tr;
printf('\n The internal quantum efficiency is %fpercent',n*100);