//EXAMPLE 2.7,Example of Power signal
clear ;
clc ;

Sum=0;
N=1:10000;
    for i=1:length(N)
     h1= 3*((-1)^i);
     h=h1^2;
    end

Energy = sum(h);
  if  (Energy/(2*(length(N))+1)<%inf ) then
  disp ('Power Signal') ;
  disp(Energy/2,'Power Signal = ');
  else
  disp ('Not a Power Signal') ;   
  end
