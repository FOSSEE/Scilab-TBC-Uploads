clear
//Given
stress_allow = 24 //ksi - The maximum allowable stress
stress_allow_shear = 14.5   //ksi- The maximum allowable shear stress
M_max  = 36 //k-ft The maximum moment
l = 16 //in-The length of the rod
w = 2 //k/ft - The force distribution on the rod
A = l*w
R_A = 6.4 //k - The reaction at A
R_B = 25.6 //k - the reaction at B
v_max = R_B-l*w //kips the maximum stress, from diagram
//W8x24 is used from the appendix table 3 and 4 
l =0.245 //in - W8x24 crossesction length
//Caliculations 

stress_xy = v_max/A        //ksi the approximate shear stress 
if stress_xy < stress_allow_shear then
    printf("W8x24 gives the allowable ranges of shear stress")
else:
     printf("W8x24 doesnot gives the allowable ranges of shear stress")
end
k = 7.0/8 //in the distance from the outer face of the flange to the webfillet
//at+kt should not exceed 0.75 of yeild stress
//a1t+2kt should not exceed 0.75 of yeild stress
Stress_yp = 36 //ksi - The yeild stress
t = 0.245 //in thickness of the web
//support a 
a = R_A/(0.75*Stress_yp*t)-k //in lengths of the bearings
//support b
a_1 = R_B/(0.75*Stress_yp*t)-2*k //in lengths of the bearings
printf("\n lengths of the bearing at A  %0.3f in",a)
printf("\n lengths of the bearing at B %0.3f in",a_1)
