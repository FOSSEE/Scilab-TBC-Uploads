//chapter 4
//broadside array
printf("\n");
n=8;
d=0.25;
lamda=1;
//part a
Gdmax=(2*n*d)/lamda;
Gdmaxdb=10*log10(Gdmax);
printf("In Case of Broadside array")
printf("\nthe directive gain is %g",Gdmax);
printf("\nthe directive gain in db is %gdb",Gdmaxdb);
//part b
//end fire array
Gdmax1=(4*n*d)/lamda;
Gdmaxdb1=10*log10(Gdmax1);
printf("\nIn case of End fire array");
printf("\nthe directive gain is %g",Gdmax1);
printf("\nthe directive gain in db is %gdb",Gdmaxdb1);
