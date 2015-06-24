w=50;//weight of acid A in grams//
x=1;
y=0.2;
K=5;
n=5;
wn=w*(x/(x+K*y))^n;
printf('wn=%fgrams',wn);
y1=1;
w0=w*(x/(x+K*y1));
printf('\nw0=%fgrams',w0);
printf('\nIt is seen that the first process leaves only 1.563grams of A with the aq. layer,\nwhereas the secondone using all available solvent in a single lot leaves 8.333grams in aqueous layer.\nIn the process (a)96.88percent of A is extracted,whereas in (b) only 83.67percent A is extracted.');
