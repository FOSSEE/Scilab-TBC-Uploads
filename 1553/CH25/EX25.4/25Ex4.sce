//Ch25 Ex 4
clc;
clear;
close;

lb=24; bb=12; hb=8; //dimensions of brick
lw=2400; bw=800; hw=60; //converting meter to centimeter
mortar=10/100;
remaining=1-mortar;
volWall=lw*bw*hw;
volBricks=remaining*(volWall);
vol1brick=lb*bb*hb; //volume of 1 brick
noBricks=volBricks/vol1brick; //number of bricks required
mprintf("The number od=f bricks required are %d",noBricks); 
