A1 = 6*0.5 ; // Partial Area in in2
A2 = 20.8 ; // from table E1 and E3
A3 = 8.82 ; // from table E1 and E3
y1 = (18.47/2) + (0.5/2) ; // Distance between centroid C1 and C2
y2 = 0 ; // Distance between centroid C2 and C2
y3 = (18.47/2) + 0.649 ; // Distance between centroid C3 and C2
A = A1 + A2 + A3 ; // Area of entire cross section
Qx = (y1*A1) + (y2*A2) - (y3*A3) ; // First moment of entire cross section
y_bar = Qx/A ; // Distance between x-axis and centroid of the cross section
disp("inch",-y_bar,"The distance between x-axis and centroid of the cross section is ")