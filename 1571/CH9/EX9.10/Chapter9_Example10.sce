clc
clear

//INPUT
ip=16.3*500*778/33000;//input power of the engine in HP
me=0.72;//mechanical efficiency of the engine
bhp=31;//brake horse power in b.h.p
ihp=bhp/me;//indicated horse power in HP

//CALCULATIONS
i=ihp/ip;//indicated thermal efficiency

//OUTPUT
mprintf('the indicted thermal efficiency is %3.3f',i)
