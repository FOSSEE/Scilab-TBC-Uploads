//computation of reaction rates using initial rate data

clear;
clc;

printf("\t Example 13.3\n");

NO1=5*10^-3;//conc of NO from 1st experiment, M
H21=2*10^-3;//conc of H2 from 1st experiment, M
r1=1.3*10^-5;//initial rate from 1st experiment, M/s

NO2=10*10^-3;//conc of NO from 2nd experiment, M
H22=2*10^-3;//conc of H2 from 2nd experiment, M
r2=5*10^-5;//initial rate from 1st experiment, M/s

NO3=10*10^-3;//conc of NO from 3rd experiment, M
H23=4*10^-3;//conc of H2 from 3rd experiment, M
r3=10*10^-5;//initial rate from 3rd experiment, M/s

//(a)
//r=k*NO^x*H2^y, dividing r2/r1 and r3/r2
x=log(r2/r1)/log(NO2/NO1);//since H21=H22
y=log(r3/r2)/log(H23/H22);//since NO3=NO2
x=round(x);
y=round(y);

printf("\t (a) the rate of reaction is : r=k[NO]^%1.0f*[H2]^%1.0f\n",x,y);

//(b)
k=r2/((NO2)^x*H22^y);//rate constant, /M^2 s
printf("\t (b) the rate constant of the reaction is : %2.1f*10^2 /M^2 s\n",k*10^-2);

//(c)
NO=12*10^-3;//conc of NO, M
H2=6*10^-3;//conc of H2, M
rate=k*(NO^x)*H2^y;//rate, M/s
printf("\t (c) the rate of reaction at given concentration is : %1.1f*10^-4 M/s\n",rate*10^4);

//End
