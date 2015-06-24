
clear;
clc;
close;
//EX(1):
function [val]=answer(u,v,x,y)
  val=u*v*10^(x+y)
endfunction
val=answer(1.2,2.3,4,3)

//EX(2):
function[val1]=answer1(u,v,x,y)
  val1=(u/v)*10^(x-y)
endfunction
val1=answer1(4.8,1.6,8,3)
