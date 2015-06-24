 // example 4.3
 // find the linear interpolation polinomial
 // using 
 
 disp('f(2)=4');
 disp('f(2.5)=5.5');
 // 1)lagrange interpolation, 
 
 P1=legrangeinterpol (2,2.5,4,5.5)
 // 2)aitken's iterated interpolation,
 
 P1=aitkeninterpol (2,2.5,4,5.5)
 
 // 3) newton devided differance interpolation,
 
 P1=NDDinterpol (2,2.5,4,5.5)
 
 // hence approximate value of f(2.2)= 4.6;
 