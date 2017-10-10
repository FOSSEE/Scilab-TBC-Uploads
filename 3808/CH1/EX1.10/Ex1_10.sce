//Chapter 01: The Foundations: Logic and Proofs

clc;
clear;

function atck(X)
    if (X=='CS1') then
        mprintf("\nA(%s) is true",X)
    elseif (X=='MATH1') then
        mprintf("\nA(%s) is true",X)
    else
        mprintf("\nA(%s) is false",X)
        end
endfunction

//Defining systems to check whether they are under attack through a function.
x1='CS1' 
x2='CS2'
x3='MATH1'

atck(x1)
atck(x2)
atck(x3)

mprintf("\nSystems under attack are CS1 and MATH1.\nThe truth values for the same are calculated using functions.")

