// Example 1.42

clear; clc; close;

format('v',6);
// Given data
Sfl=5;//in %
IscByIfl=6;//ratio

//Calculations
Sfl=Sfl/100;//slip
TstByTfl=1;//as Tfl=Tst
//Let X= tapping on transformer
X=sqrt(TstByTfl/(IscByIfl^2)/Sfl);//Tapping on transformer
disp(X,"Tapping on auto transformer : ");
IstByIfl=X^2*IscByIfl;//supply starting current to full load current 
disp("The supply starting current is "+string(IstByIfl)+" times of full load current.");
