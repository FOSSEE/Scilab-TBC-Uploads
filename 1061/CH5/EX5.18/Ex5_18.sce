//Ex:3.18
clc;
clear;
close;
BLP=250*10^6;// bandwidth length product in Hz
tr=0.32/BLP;// intermodel pulse width broadening
md=75;// material dispersion in ps/nm.km
tm=2.25;//pulse broadening due to material dispersion in ns/km
tc=sqrt((tr*10^9)^2+tm^2);// combine pulse broadening in ns/km
Ba=0.32/tm*10^9;// actual BLP in Hz.km
Bac=Ba/10^6;// actual BLP in MHz.km
printf("The intermodel pulse width broadening =%f ns/km", tr*10^9);
printf("\n pulse broadening due to material dispersion =%f ns/km", tm);
printf("\n The combine pulse broadening =%f ns/km", tc);
printf("\n The actual BLP =%f MHz.km", Bac);