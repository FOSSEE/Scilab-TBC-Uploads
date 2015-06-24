N0=3396;//no. of counts per minute given by radioactive nuclide at a given time//
N=1000;//no. of counts per minute given by radioactive nuclide one hour later//
thalf=0.693*60/(2.303*log(N0/N));//half life of nuclide in minutes//
printf('Half life of radioactive nuclide=t1/2=%fminutes',thalf);
t1=2.303*log(100/25)*thalf/0.693;//time required for the activity to decrease to 25% of the initial activity in minutes//
printf('\nTime required for the activity to decrease to 25percent of the initial activity=t1=%fminutes',t1);
t2=2.303*log(100/10)*thalf/0.693;//time required for the activity to decrease to 10% of the initial activity in minutes//
printf('\nTime required for the activity to decrease to 10percent of the initial activity=t2=%fminutes',t2);
