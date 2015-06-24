//example-9.4
//page no-274
//given
//according to the data given in the question we can have the graph shown in the fig 9.11 in book
//part(a):- tangent modulus of elasticity at 200 MPa
E_tangent=(222-168)*10^9/(1.90-1.42)/10^9   //G Pa ( values from graph)
//part(b):- secant modulus of elasticity at 180 MPa
E_secant= (180-0)*10^9/(1.46-0)/10^9   //G Pa  (values from graph)
//part(c):-youngs modulus of elasticity at 85 MPa
E=(85-0)*10^6/((0.68-0)*10^-3)/10^9   //G Pa  (values from graph)
printf ("tangent modulus of elasticity at 200 MPa is %f Pa\n secant modulus of elasticity at 180 MPa is %d Pa \n youngs modulus of elasticity at 85 MPa is %d Pa",E_tangent,E_secant,E)
