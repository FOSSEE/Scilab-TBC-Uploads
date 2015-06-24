// Example  1.61

clc;clear;close;

// Given data
IscByIfl=3*180/100;//ratio
TstByTfl=35/100;//ratio
X=75;//tapping in %

//calculations
X=X/100;//tapping

//Star delta starting
//Formula : TstByTfl=1/3*IscByIfl*Sfl
Sfl=TstByTfl*3/IscByIfl^2;//slip at full load

//Auto transformer  starting
IstByIsc=X^2;//ratio
IstByIfl=X^2*IscByIfl;//ratio
disp("Starting current is "+string(IstByIfl*100)+"% of fulll load current.");
TstByTfl=X^2*IscByIfl^2*Sfl;//ratio
disp("Starting torque is "+string(TstByTfl*100)+"% of fulll load torque.");
//Answer of starting current in terms of full load curremt is not given in the book.
