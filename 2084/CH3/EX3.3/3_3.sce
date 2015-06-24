//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 3.3
//calculation of distance from speed versus time graph

//given data
base=3; //time(in s) representing the base of graph(triangle)
height=6; //speed(in m/s) representing the height of the graph(triangle)
//calculation
dist=(1/2)*base*height; //distance travelled is the area of the graph(triangle)

disp(dist,'the distance(in m) travelled by the particle is');
