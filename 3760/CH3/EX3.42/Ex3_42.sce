clc;
p=100; // KW rating of transformer
al=1; // ratio of core loss to ohmic loss
th=3; // heating time constant in hours
h=1; // duration in hour for which KVA rating has to be determined
disp('case a');
// constant losses are equal to variable losses
pn=p*sqrt(((1+al)/(1-exp(-h/th)))-al); 
printf('One hour rating is %f KW\n',pn);
disp('case b');
// consatant losses are neglected
al=0;  // ratio of core loss to ohmic loss
pn=p*sqrt(((1+al)/(1-exp(-h/th)))-al); 
printf('One hour rating is %f KW\n',pn);
