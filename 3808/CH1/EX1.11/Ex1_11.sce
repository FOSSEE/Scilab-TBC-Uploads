//Chapter 01: The Foundations: Logic and Proofs

clc;
clear;

v1=sqrt(2)
v2=(3/2)

//let p be the proposition that sqrt(2) > (3/2)
if v1 > v2 then            //which is false
    z=v1**2 >v2**2
    mprintf("(sqrt(2))^2 > (3/2)^2 %s ", string([%F]))//which is false and as a result will not be printed
end

//The conclusion is false,therefore final argument
fin_arg=v1**2>v2**2//sqrt(2)^2 is less than (3/2)^2
disp(fin_arg)
