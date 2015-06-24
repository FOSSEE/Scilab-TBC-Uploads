clc; funcprot(0); //Example 22.3. 

//Initializing the variables
Ma = 0.6;
Cl = 0.6;
tByC = 0.035; // Thickness to chord ratio
cByC = 0.015; // Camber to chord ratio
x = 3; // Angle of incidence

//Calculations
lamda = 1/sqrt(1-Ma^2);
Cl# = lamda*Cl;
tByC1 = tByC*lamda;
cByC1 = cByC*lamda;
Cl1 = Cl*lamda^2;
Ae = x*lamda;

disp(Ae,"angle of incidence (Degree) :", Cl1, "Lift Coefficient :",cByC1, "Camber to chord ratio :",tByC1,"Thickness to chord ratio :","____Geometric Characterstics____" );