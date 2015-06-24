//EXAMPLE 3.14
//ENERGY OF LP DISCREET TIME SIGNAL
//PROGRAM REQUIRES MAXIMA SCILAB TOOLBOX
clc;
clear;
syms n wc w;
 wc = input("the value of wc ( less than %pi)= ");
n = -5:0.05:5;

for i =0:length (n)
    hlp(i+1) = (wc/%pi)*sinc((wc*i)/%pi);
    E(i+1)=(abs(hlp(i+1)))^2;
end

Energy = sum(E);
 if (Energy<%inf ) then
  disp ('The filter is Energy Signal') ;
  else
  if  (Energy/length(N)<%inf ) then
  disp ('Power Signal') ;
  else
  disp ('Niether Energy nor Power Signal') ;   
  end
 end
disp(Energy,'the energy is = '); 