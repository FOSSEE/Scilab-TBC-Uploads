//Variable declaration
B=9.27*10**-24;      //bohr magneton(ampere m**2)
a=2.86*10**-10;      //edge(m)
Is=1.76*10**6;       //saturation value of magnetisation(ampere/m)

//Calculation
N=2/a**3;
mew_bar=Is/N;      //number of Bohr magnetons(ampere m**2)
mew_bar=mew_bar/B;      //number of Bohr magnetons(bohr magneon/atom)

//Result
printf('number of Bohr magnetons is %0.3f bohr magneon/atom\n',(mew_bar))