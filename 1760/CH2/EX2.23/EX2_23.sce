          //EXAMPLE 2-23     PG NO-71
A=%pi/2;
                         //[integrate('0',wt,'%pi/3')]^2=%pi/9
                         //integrate('%pi/3',wt,'%pi/2')=%pi/6;
E=1/A*[(%pi/9)+(%pi/6)];
disp('i)  Energy  (E) is   =  '+string (E) +'  ');
disp('ii) Square Energy  (E) is   =  '+string (sqrt(E)) +'  ');
FF=[sqrt(E)*3]/2;
disp('iii)  FORM FACTOR  (FF) is   =  '+string (FF) +'  ');
