//           Case Study:Chapter-9[page no:310]
//        1.Calculation of Area under a Curve
funcprot(0);
 //global variables
 global start_point
 global end_point; 
 global total_area;
 global numtraps;
function[]=input1()
    global start_point;
     global end_point; 
     global total_area;
     global numtraps;
    total_area=0;
    start_point=input("Enter lower limit:");
    end_point=input("Enter upper limit:");
    numtraps=input("Enter number of trapezoids:");
endfunction
function[total_area]=find_area(a,b,n)
    global total_area;
    base=(b-1)/n;                  //base is local variable 
    lower=a;                       //lower is local variable
    for lower=a:(lower+base):(b-base)
        h1=function_x(lower);
        h2=function_x(lower+base);
        total_area=total_area+trap_area(h1,h2,base); //total area is calculated
    end
endfunction
function[area]=trap_area(height_1,height_2,base)
    area =0.5*(height_1+height_2)*base;     //area is local variable
endfunction
function[x] =function_x(x)
    x=(x^2)+1;
endfunction

//calling functions
disp("AREA UNDER CURVE");
input1();                           //calling input1() function
total_area=find_area(start_point,end_point,numtraps);//calling find_area() function
printf("TOTAL AREA = %f",total_area);