//Chapter 9
//Example 9.8
//page 360
//To build Zbus matrix using Zbus building algorithm
clear;clc;

disp("Let us go on modifying Zbus by including nodes and the elements connected to it one by one as given in the textbook")

//step-1 type1 modification
Zbus=[0.25];
printf('\nstep-1 type1 modification\nZbus=');disp(Zbus);

//step-2 type2 modification
Zbus=[Zbus,0.25;0.25,0.25+0.1];
printf('\nstep-2 type2 modification\nZbus=');disp(Zbus);

//step-3 type2 modification
Zbus=[Zbus [0.25;0.25]; 0.25 0.25 0.35];
printf('\nstep-3 type2 modification\nZbus=');disp(Zbus);

//step-4 type3 modification
Zbus=Zbus-(1/(Zbus(3,3)+0.25))*[Zbus(1:3,2:2)]*[Zbus(2:2,1:3)];
printf('\nstep-4 type3 modification\nZbus=');disp(Zbus);

printf('This is the final Zbus matrix after including all the elements\n');
//step-5 type4 modification
Zbus=Zbus-(1/(0.1+Zbus(2,2)+Zbus(3,3)-2*Zbus(2,3)))*[Zbus(1:3,2:2)-Zbus(1:3,3:3)]*[Zbus(2:2,1:3)-Zbus(3:3,1:3)];
printf('\nstep-5 type4 modification\nZbus=');disp(Zbus);

disp("opening a line between 2-3 is equivalent to connecting (-0.1) between bus3 bus2")
Zbus=Zbus-(1/(-0.1+Zbus(2,2)+Zbus(3,3)-2*Zbus(2,3)))*[Zbus(1:3,2:2)-Zbus(1:3,3:3)]*[Zbus(2:2,1:3)-Zbus(3:3,1:3)];
printf('Zbus=');disp(Zbus);printf('(same as in step 4)');