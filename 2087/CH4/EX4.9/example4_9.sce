

//example 4.9
//calculate preciptation value which has recurrence period of 6 years
clc;funcprot(0);
//given
p=[475 377 731 1066 361 305 926 628 409 236 337 853];   //precipitation value
N=12;                       //total number of years
T=6;                        //recurrence interval
m=N/T;
mprintf("Ranking of storm=%i.",m);
//hence pick 2nd severest storm
mprintf("\npreciptation value which has recurrence period of 6 years=%i mm.",p(7));

