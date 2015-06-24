// Caption: Finding Torque acting on the rotor
clear;
close;
clc;

U_o=4*%pi*10^-7;

function [T]=torque(B,h,g,r)
    T=(B^2*g*h*(r+g*.5))/U_o;
  endfunction
  
  T_fld=torque(2,0.02,0.002,0.02);//Maximum torque in N.m
  
  disp(T_fld,'Torque acting on the rotor');