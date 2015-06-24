clc;
i=10;  //current
r=0.005;  //radius in metre
h1=(i)/(4*2*(%pi)*r);  //at half radius H is (1/4)th
disp(h1,"H field intensity at one half of radius in A/metre = ");  //displaying result
h2=(i)/(2*(%pi)*0.01);  //calculating H at surface
disp(h2,"H field intensity at surface in A/metre = ");  //displaying result
disp("H field intensity is proportional to radius.Therefore, it is zero at the center.");  //displaying result