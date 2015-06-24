//Chapter 1
//page 40
//Example no 1-19
//Determine single ended  output
//figure 1.20
//Given
clc;
Vcc=15;     //in Volt
Rc=8000;        //in Ohm
re=30;        //in ohm
Rt=10000;        //in Ohm
Vee=8;        //in Volt
It=(Vee-0.7)/Rt;
printf("\n It =%.5f Amp \n",It);// Result
Ie=It/2;
re1=(26*10^-3)/Ie;
printf("\n re1 =%.1f \n",re1);// Result
//for single ended output gain
Av=Rc/(2*(re1+re));
printf("\n Single output gain is %.1f \n",Av);// Result
printf("\n The diferential output gain is twice Av i.e. %.0f ",2*Av);// Result
