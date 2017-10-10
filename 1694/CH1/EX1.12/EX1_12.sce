clear;
clc;
printf("\nEx1.12\n");
//page no.-17
//given
a=4.04;.........//lattice constant in angstrom
disp("For <200> planes");
h=2;
k=0;
l=0;

d=a/sqrt((h^2)+(k^2)+(l^2))........//distance between planes in angstrom

disp("For <110 planes>");
h=1;
k=1;
l=0;

d=a/sqrt((h^2)+(k^2)+(l^2))

disp("For<111> planes");
h=1;
k=1;
l=1;

d=a/sqrt((h^2)+(k^2)+(l^2))

disp("all values in angstrom");
