//                     Example 5.5
// The program reads the customer number and power consumed and prints
//the amount to be paid by the customer

disp("Enter CUSTOMER NO. and UNITS consumed");
//Read data
custnum=input("CUSTOMER NO.:");
units=input("UNITS:");
//Use of else...if ladder
//Calculates charges
if(units<=200) ,
    charges=0.5*units;
elseif(units<=400) ,
    charges=100+0.65*(units-200);
elseif(uints<=600) ,
    charges=230+0.8*(units-400);
else
    charges=390+(units-600);
end
//Print results
printf("Customer No:%d  Charges=%.2f",custnum,charges);
