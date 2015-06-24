                //Example 4.21
//use of the minimum field width feature using g-type conversion
i = 12345;
x = 345.678;
printf("%3d  %5d %8d\n\n", i, i, i);
printf("%3g %10g %13g\n\n", x, x, x);
printf("%3g %13g %16g", x, x, x);