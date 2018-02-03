clear
//Given
//FOR FLANGE
l = 5 //in - The length of the flange
b = 5 //in - Teh width of the flange
t  = 0.312 //in - the thickness of the flange
L = 20 //in - Length of the beam, Extracted from AISC manuals
A = 4.563 //sq.in - The area of crossection of the beam
r = 1.188 //in - radius of the gyration, Extracted from AISC manuals
//b/t- value of the flange
k = (5 -t)/(2*t) //b/t ratio
//AISC, lets check maximum allowable stress for slang
Stressf_all = 23.1 - 0.79*k //ksi The maximum allowable stress in case of flange,AISC

//web width thickness ratio
k_2 = (5 -2*t)/(t)
if k_2<16 then
    Stressw_all = 19 //ksi - The allowable stress in case of web width
    end
//a) Overall buckling investment
k_31 = L/r //slenderness ratio
Stressb_all = 20.2 - 0.126*k_31//ksi The maximum allowable stress in case of Buckling,AISC
p_allow = A*Stressf_all //kips The allowable concentric load

//b) Overall buckling investmen
L_2 = 60 //in
k_3 = L_2/r //slenderness ratio
Stressb_all_2 = 20.2 - 0.126*k_3//ksi The maximum allowable stress in case of Buckling,AISC
p_allow_2 = A*Stressb_all_2 //kips The allowable concentric load

printf("\n The maximum allowable stress in case of web width %0.2f ksi",Stressw_all)
printf("\n The maximum allowable stress in case of flange %0.2f ksi",Stressf_all)
printf("\n a) The maximum allowable load in case of Buckling %0.2f kips",p_allow)
printf("\n b) The maximum allowable load in case of Buckling %0.2f kips",p_allow_2)
// small variation due to rounding off errors
