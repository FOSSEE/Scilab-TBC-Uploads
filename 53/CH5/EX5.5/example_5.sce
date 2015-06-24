//important:In this example ro1 value is contradicting in text book,sometimes they used 1K0hm and sometimes 4Kohms,the code below used ro1=2KOhms as specified in question
//example5.5
//caption:Shunt voltage feedback circuit
//input resistance ri1
ri1=1000;//in ohms
//output resistance ro1
ro1=2000;//in ohms
//trans resistance Kr
Kr=-10^6;//in ohms
//Feedback resistor R
R=10000;//in ohms
//current source Jg
Jg=0.001;//in Amps
//source internal resistance rg
rg=2000;//in ohms
//load resistance rl
rl=5000;//in ohms
//unloaded feedback fraction 
Bg=-1/R;
disp('Unloaded feedback fraction,Bg=-1/R');
disp('open loop gain,RTs=Vo/Jg=input current coupling factor*Kr*output voltage coupling factor');
RTs=((rg*R/(rg+R))/(ri1+(rg*R/(rg+R))))*Kr*((rl*R/(rl+R))/(ro1+(rg*R/(rg+R))));
printf("RTs=%d ohms",RTs/1000);
disp('Open-loop input resistance,ris=rg||R||ri1');
ris=rg*R*ri1/(rg*R+R*ri1+rg*ri1);
printf("\nris=%d ohms",ris);
disp('Open-loop output resistance,ros=ro1||R||rl');
ros=rl*R*ro1/(rl*R+R*ro1+rl*ro1);
printf("ros=%d Ohms",ros);
disp('Closed-loop gain,RTf=RTs/(1+RTs*Bg)');
RTfs=RTs/(1+RTs*Bg);
printf("\nRTfs=%1.2f Kohms",RTfs/1000);
disp('Closed-loop input resistance,rifs=ris/(1+RTs*Bg)');
rifs=ris/(1+RTs*Bg);
printf("rifs=%d Ohms",rifs);
disp('Closed-loop output resistance,rof=ros/(1+RTs*Bg)');
rofs=ros/(1+RTs*Bg);
printf("rofs=%2.1f Ohms",rofs);
printf("RESULTS:\n");
Vout=RTfs*Jg;
printf("\n(i)The output voltage=%1.2f V",Vout);
disp('rifs=rif*rg/(rif+rg)==>rif=rg*rifs/(rg-rifs)');
rif=rg*rifs/(rg-rifs);
printf("\n(ii)The input resistance seen by the actual signal source is %2.1f Ohms",rif);
disp('rofs=rof*rl/(rof+rl)==>rof=rl*rofs/(rl-rofs)');
rof=rl*rofs/(rl-rofs)
printf("\n(iii)The output resistance seen by the load is %2.1f Ohms",rof);
printf("(iV)The closed-loop gain of the amplifier");
disp('RTf=Vo/i1,where')
disp('i1=current coupling factor*Jg=rg*Jg/(rg+rif)');
RTf=(rg+rif)*RTfs/rg;
printf("(iV)The closed-loop gain of the amplifier circuit is %1.2f Kohms",RTf/1000);//divided by 1000 to convert ohms to Kohms.
