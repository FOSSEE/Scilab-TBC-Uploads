thalf=4.5*10^9;//half life of Uranium in years//
printf('Here N0 and N must be in terms of Uranium.N is proportional to 1gram og Uranium');
printf('\nN0 can be calculated from the given data.0.0453grams of 206Pb corresponds to 238*0.0453/206=0.0523grams of 238U,i.e 0.0453 grams of 206Pb must have been formed by the decaying of 0.523grams of 238U.\nSince N is proportional to 1,N0 is proportional to 1.0523.');
N0=1.0523;
N=1;
t=2.303*log(N0/N)*thalf/0.693;//Age of the mineral in years//
printf('\nAge of the mineral=t=%fyears=7.62*10^8years',t);//here also the answer given in textbook is wrong the one resulted through execution is the right one//
