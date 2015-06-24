clc;clear;
//Example 16.11

//given data
yw=0.30;//w for water
ya=0.70;//a for ammonia
T=40;

//saturation pressure
pw=7.3851;
pa=1554.33;
//calulations
Pw=yw*pw;
Pa=ya*pa;
Pt=Pw+Pa;
yw=Pw/Pt;
ya=Pa/Pt;
disp(yw,'mole fraction of water vapour');
disp(ya,'mole fraction of ammonia')
