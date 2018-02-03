clear
//

//Initilization of Variables

//flanges
b=200 //mm //width
t1=25 //mm //Thickness

//web
d=450 //mm //Depth 
t2=20 //mm //thickness

D=500 //mm //Total Depth of section

//Calculations

//Moment Of Inertia of the section about N-A
I=1*12**-1*b*D**3-1*12**-1*(b-t2)*d**3 //mm**4

//Consider an element in the web at distance y from y from N-A
//Depth of web section=225-y

//C.G From N-A
//y2=y+(((D*2**-1-t)-y)*2**-1)

//ay_bar for section at y
//Let ay_bar be X
//X=X1 be of Flange + X2 be of web above y
//X=b*t1*(D*2**-1-t1*2**-1)+t2*(d-t1)*(d-t1+y)*2**-1
//After Sub values and Further simplifying we get
//X=1187500+10*(225**2-y**2)

//Shear stress at y
//sigma_y=F*(X)*(t2*I)**-1

//Shear Force resisted by the Element
//F1=F*X*t2*dy*(t2*I)**-1

//Shear stress resisted by web 
//sigma=2*F*I**-1*(X)*dy

//After Integrating above equation and further simplifying we get
//sigma=0.9578*F

sigma=0.9578*100

//Result
