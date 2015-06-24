//chapter 2
//Aemax=Gdmax*lamda^2/4*pi;
printf("\n");
Aemax=0.13;//assume lamda=1 for half wave dipole
Gdmax=4*(%pi)*Aemax;
printf("the maximum directive gain is %g",Gdmax);
Gdmaxdb=10*log10(Gdmax);
printf("\nthe maximum directive gian in db is %gdb",Gdmaxdb);
