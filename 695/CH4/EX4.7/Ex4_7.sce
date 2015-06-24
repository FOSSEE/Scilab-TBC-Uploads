//Caption:Determine the (a)KVA Load (b)Percentage rated load (c)Total KVA Rating (d)Ratio of star-star bank to delta-delta bank transformer rating (e)% increase in load
//Exa:4.7
clc;
clear;
close;
KVA=25;
KVA_s=50/sqrt(3);
disp(KVA_s,'(a)KVA Load supplied by each transformer (in KVA)=');
r=KVA_s/KVA;
disp(r,'(b)Percent of rated load (in %)=');
KVA_t=2*25*0.866;
disp(KVA_t,'(c)Total KVA rating (in KVA)=');
ratio=KVA_t/75;
disp(ratio,'(d)Ratio=');
KVA_s2=50/3;
Inc=KVA_s/KVA_s2;
disp(Inc*100,'(e)Increase in load (in %)=')