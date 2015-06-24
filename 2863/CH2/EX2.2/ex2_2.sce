//chapter 2
//formula etta=Prad/Prad+Ploss=Rrad/Rrad+Rloss
printf("\n");
Rrad=72;
printf("radiation resistance is %dohm",Rrad);
Rloss=8;
ettar=72/(72+8);
printf("\nthe Loss resistance is %dohm",Rloss);
Gpmax=30;
printf("\nthe power gain of antenna is %d",Gpmax);
Gdmax=Gpmax/ettar;
Gdmax1=10 *log10(Gdmax);//in db
printf("\nthe Directivity gain is %g",Gdmax);
printf("\nthe Directivity gain in db is given by %edb",Gdmax1);
