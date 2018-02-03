clear
//Let //ABC be the triangle of forces drawn to some scale
//Two forces F1 and F2 are acting at point A
//angle in degrees '°'

//
  
//variabble declaration
cnv=%pi/180

BAC = 20*cnv                           //Resultant R makes angle with F1    
 
ABC = 130*cnv                    

ACB = 30*cnv   

R =  500                            //resultant force,N

//calculations
//sinerule

F1=R*sin(ACB)/sin(ABC)
F2=R*sin(BAC)/sin(ABC)

printf("\n F1= %0.2f  N",F1)
printf("\n F2= %0.2f  N",F2)
