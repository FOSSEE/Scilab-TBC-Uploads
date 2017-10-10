clc;
clear;
disp("Each corner sphere of the bcc unit cell is shared with eigth neighbouring  cells.Thus each cell contains one eigth of a sphere at all the eigth corners.Each unit cell also contains one central sphere")
S=2 //Sphere per unit cell

//Calculation
f=S*%pi*sqrt(3)/16 //maximum fraction of a unit cell

mprintf("bcc unit cell volume filled with hard sphere= %i %%",round(f*100))

