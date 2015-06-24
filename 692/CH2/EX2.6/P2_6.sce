//EXAMPLE 2.6, Energy Signal 

clear ;
clc ;
n = -5:5;
for i =1:length ( n )
 if(n(i)>=1)
 h(i)=1/n(i);
 else
 h(i)=0;
 end
end

Sum=0;
N=1:10000;
  for i=1:length(N)
  h(i)=(1/N(i))^2;
  end 

Energy = sum(h);

 if (Energy<%inf ) then
  disp ('Energy Signal') ;
  disp(Energy,'Energy of signal = ');
  else
  if  (Energy/length(N)<%inf ) then
  disp ('Power Signal') ;
     
  else
  disp ('Niether Energy nor Power Signal') ;   
  end
 end
