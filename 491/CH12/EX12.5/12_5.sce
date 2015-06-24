// Following variables are obtained from example 12.2
A1 = 6*0.5; // Partial Area in in2
A2 = 20.8; // from table E1 and E3
A3 = 8.82; // from table E1 and E3
y1 = (18.47/2) + (0.5/2); // Distance between centroid C1 and C2
y2 = 0 ; // Distance between centroid C2 and C2
y3 = (18.47/2) + 0.649; // Distance between centroid C3 and C2
A = A1 + A2 + A3; // Area of entire cross section
Qx = (y1*A1) + (y2*A2) - (y3*A3); // First moment of entire cross section
y_bar = Qx/A; // Distance between x-axis and centroid of the cross section
c_bar = -(y_bar);
//////////////////////////
I1 = (6*0.5^3)/12; // Moment of inertia of A1 
I2 = 1170; // Moment of inertia of A2 from table E1
I3 = 3.94; // Moment of inertia of A3 from table E3
Ic1 = I1 + (A1*(y1+c_bar)^2); // Moment of inertia about C-C axis of area C1
Ic2 = I2 + (A2*(y2+c_bar)^2); // Moment of inertia about C-C axis of area C2
Ic3 = I3 + (A3*(y3-c_bar)^2); // Moment of inertia about C-C axis of area C3
Ic = Ic1 + Ic2 + Ic3 ; // Moment of inertia about C-C axis of whole area
disp("in^4",Ic,"The moment of inertia of entire cross section area about its centroidal axis C-C")