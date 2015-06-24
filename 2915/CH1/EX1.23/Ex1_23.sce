clc,clear
//Example 1.23
//To find trigonometric functions of various angles
//Note: Undefined ratios are commented to avoid divide by zero error

//zero degrees
//consider a point (1,0)
//Line segment joining (0,0) and (1,0) can be treated as triangle

x=1//base
y=0//height
r=1 //hypotenuse
sin_0 = y/r;
cos_0 = x/r;
tan_0 = y/x;
//csc_0 =r/y;
sec_0 = r/x;
//cot_0=x/y;
printf('\nZERO DEGREES:\n')
printf('sin(0)= %f;\n',sin_0)
printf('cos(0)= %f;\n',cos_0)
printf('tan(0)= %f;\n',tan_0)
printf('csc(0)= undefined = (1/0);\n')
printf('sec(0)= %f;\n',sec_0)
printf('cot(0)= undefined = (1/0);\n')

//90 degrees
//consider a point (0,1)
//Line segment joining (0,0) and (0,1) can be treated as triangle

x=0//base
y=1//height
r=1 //hypotenuse
sin_90 = y/r;
cos_90 = x/r;
//tan_90 = y/x;
csc_90 =r/y;
//sec_90 = r/x;
cot_90=x/y;
printf('\n90 DEGREES:\n')
printf('sin(90)= %f;\n',sin_90)
printf('cos(90)= %f;\n',cos_90)
printf('tan(90)= undefined = (1/0);\n')
printf('csc(90)= %f;\n',csc_90)
printf('sec(90)= undefined = (1/0);\n')
printf('cot(90)= %f;\n',cot_90)

//180 degrees
//consider a point (-1,0)
//Line segment joining (0,0) and (-1,0) can be treated as triangle

x=-1//base
y=0//height
r=1 //hypotenuse
sin_180 = y/r;
cos_180 = x/r;
tan_180 = y/x;
//csc_180 =r/y;
sec_180 = r/x;
//cot_180=x/y;
printf('\n180 DEGREES:\n')
printf('sin(180)= %f;\n',sin_180)
printf('cos(180)= %f;\n',cos_180)
printf('tan(180)= %f;\n',tan_180)
printf('csc(180)= undefined = (1/0);\n')
printf('sec(180)= %f;\n',sec_180)
printf('cot(180)= undefined = (-1/0);\n')


//270 degrees
//consider a point (0,-1)
//Line segment joining (0,0) and (0,-1) can be treated as triangle

x=0//base
y=-1//height
r=1 //hypotenuse
sin_270 = y/r;
cos_270 = x/r
//tan_90 = y/x;
csc_270 =r/y;
//sec_90 = r/x;
cot_270=x/y;
printf('\n270 DEGREES:\n')
printf('sin(270)= %f;\n',sin_270)
printf('cos(270)= %f;\n',cos_270)
printf('tan(270)= undefined = (-1/0);\n')
printf('csc(270)= %f;\n',csc_270)
printf('sec(270)= undefined = (1/0);\n')
printf('cot(270)= %f;\n',cot_270)
