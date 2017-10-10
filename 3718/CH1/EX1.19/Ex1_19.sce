//Chapter 1: Structure and Bonding
//Problem: 19
clc;

B_O1 = (10 - 6) / 2              // Bond Order for O2
B_O2 = (10 - 7) / 2              // Bond Order for O2-
r=B_O1 > B_O2

if r==%t then disp("Bond length of O2- > O2 as Bond order of O2 > Bond order of O2-")
end

mprintf(" Both are paramagnetic, because they contain unpaired electrons.")
