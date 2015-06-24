

//example 11.9
//calculate depth of flow at both end of jumps
clc;funcprot(0);
//given
q=19;        //dischrge through spillway
E=1;         //energy loss

//from energy loss equation;E=(y2-y1)^3/4y2y1; and solving it we get
//x=0.5*(-1+(1+294.39*(x-1)^9/64*x^3))
//by trial and error method x=2.806
x=2.806;
y1=4*x/(x-1)^3;
y2=x*y1;
y1=round(y1*1000)/1000;
y2=round(y2*1000)/1000;
mprintf("depth of flow at both end of jumps=%f m and %f m. respectively.",y1,y2);

