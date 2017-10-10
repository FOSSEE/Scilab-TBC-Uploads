
clear//

//Variable Declaration
n=20 //Modular Ratio
sigma_wd=8*10**6 //Maximum bending stress in wood in Pa
sigma_st=120*10**6 //Maximum bending stress in steel in Pa

//Cross Sectional Details
Awd=45 //Area of wood in mm^2
y_wd=160 //Neutral Axis of from bottom of the wooden section in mm
Ast=15 //Area of steel in mm^2
y_st=5 //Neutral Axis of the Steel section in mm
//Dimensions
ww=150 //width of wooden section in mm
dw=300 //depth of wooden section in mm
ws=75 //width of steel section in mm
ds=10 //depth of steel section in mm

//Calculations
y_bar=(Awd*y_wd+Ast*y_st)*(Ast+Awd)**-1 //Location of Neutral axis from the bottom in mm
//Moment of inertia 
I=(ww*dw**3*12**-1)+(ww*dw*(y_wd-y_bar)**2)+(n*ws*ds**3*12**-1)+(n*ws*ds*(y_bar-y_st)**2) //mm^4
c_top=dw+ds-y_bar //Distance from NA to top fibre in mm
c_bot=y_bar //Distance from NA to bottom fibre in mm

//The solution will be in different order 
M1=sigma_wd*I*10**-12*c_top**-1 //Maximum Bending Moment in N.m
M2=sigma_st*I*10**-12*c_bot**-1 //Maximum Bending Moment in N.m
M=min(M1,M2) //Maximum allowable moment in N.m

//Result
printf("\n The Maximum Allowable moment that the beam can support is %0.1f kN.m",M)
