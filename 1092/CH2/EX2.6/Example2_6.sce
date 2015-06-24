// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 2: Dynamo Construction and Windings
// Example 2-6

clear; clc; close; // Clear the work space and console.

// Given data
P = 4;// No. of poles
phi = 3; // No. of phases
slots_(1) = 12; // No. of slots for case 1
slots_(2) = 24; // No. of slots for case 2
slots_(3) = 48; // No. of slots for case 3
slots_(4) = 84; // No. of slots for case 4

// Calculations
electrical_degrees = 180 * 4;
i=1; // where i is case subscript .eg case1, case2, etc

  while i<=4  
    alpha_(i) = electrical_degrees / slots_(i); // electrical degrees  
    // per slots for case i
    n_(i) = slots_(i) / ( P * phi ); // No. of ac cycles for case 1
    k_d(i) = sind( n_(i)*( alpha_(i) / 2 ) ) / ( n_(i) * sind( alpha_(i) / 2));
    i=i+1;
  end;
     
// Display the results
disp("Example 2-6 Solution : ")
printf("\n a:");
 i=1; // where i is case subscript .eg case1, case2, etc
   
   while i<=4
        printf("\n \t %d: alpha = %.2f degrees/slot", i , alpha_(i) );
        printf("\n\t    n = %d slots/pole-phase ", n_(i) );
        printf("\n\t    kd = %.3f ", k_d(i));
        printf("\n");
        i=i+1; 
   end;
   
printf("\n\n\n b: ");
printf("\n \t \t n \t alpha in degrees  \t\t kd ");
printf("\n \t __________________________________________________________" );
i=1;

 while i<=4
    printf("\n \t \t %d \t %.2f \t\t\t\t%.3f ", n_(i) , alpha_(i) , k_d(i) );
    i = i +1;
  end;
    printf("\n \t __________________________________________________________" );

