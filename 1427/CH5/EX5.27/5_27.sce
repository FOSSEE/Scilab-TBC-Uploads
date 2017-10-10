//ques-5.27
//Calculating pH of acetic acid and volume required
clc
M=1;//molarity of acetic acid
Ka=1.8*10^-5;
v=10;//volume of acetic acid (in L)
a1=sqrt(Ka*v);//degree of dissociation
pH=-log10(a1/v);
p1=2*pH;//new pH
//a2 = antilog(-p1)
a2=1.8*10^-6;//new degree of dissociation
V=Ka/a2^2;//volume required (in L)
printf("pH of acetic acid is %.4f and volume required is %d L.",pH,V);
