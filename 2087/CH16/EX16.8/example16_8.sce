

//example16.8
//calculate ratio of discharge at A and B;ratio of average rainfall at A and B
clc;funcprot(0);
//given
r1=2;        //ka/kb
r2=1/1.5;    //La/Lb
r3=5/6;      //(b^2-a^2)a/((b^2-a^2)b)

Rq=r1*r3/r2;
Rp=Rq/r2;
mprintf("ratio of discharge at A and B=%f.",Rq);
mprintf("\nratio of average rainfall at A and B=%f.",Rp);
