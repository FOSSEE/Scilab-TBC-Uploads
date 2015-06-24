//chapter 2
printf("\n");
Rrad=72;
Rloss=8;
Gp=16;
n=Rrad/(Rrad+Rloss);
printf("the radiation efficiency is %g",n);
Gp=16;
Gd=Gp/n;
Gddb=10*log10(Gd);
printf("\nthe directive gain is %g",Gd);
printf("\nthe directive gain in db is %gdb",Gddb);
