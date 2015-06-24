//chapter 2
//Gpmax=n*Gdmax
//N=Rrad/Rrad+Rloss
printf("\n");
Rrad=72;
Rloss=8;
n=Rrad/(Rrad+Rloss);
printf("the radiation efficiency is given by %g",n);
Gpmax=15.8489;//antilog(Gpmax/10);Gpmax=12db
Gdmax=Gpmax/n;
Gdmaxdb=10*log10(Gdmax);
printf("\nthe directive gain is %g",Gdmax);
printf("\nthe directive gain in db is %g",Gdmaxdb);
