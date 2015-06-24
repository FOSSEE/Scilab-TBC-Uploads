
//To detemine the characteristics for tapping of 30 percent of the turns
//Page 400
clc;
clear;
I=[50,100,150,200,250]; //Current
N1=[73.5,48,41,37,35]; //Speed
Ft1=[131,457,810,1163,1525]; //Tractive Effort in Kg
Fl=70/100; //Effective Tapping of the Turns (30% reduction)

//Consider flux corresponding to 250A as 100%, that is for 35 Kmph

Flux=(35*100)./N1; //Flux Percent for Current Value

//Reduction by 30% of turns is same as reducing the Ampere Turns by 30% which is same as reducing the Current by 30%

RI=Fl.*I; //Reduced Current
RFlux=[32,57,74,83,90]; //Reduced flux determined From the Graph of %Flux and Current in the TextBook

N2=(N1.*Flux)./RFlux; //Speed for the new case

//Tractive Effort is directly proportional to the product of flux and current

Ft2=RFlux.*Ft1./Flux; //Tractive Effort of the Second Case

printf('The Current in Amperes:\n')
disp(I)
printf('\nThe Speed in Kmph\n')
disp(N2)
printf('\nThe Tractive Effort in Kg\n')
disp(Ft2)
